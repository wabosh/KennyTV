import 'dart:convert';
import 'dart:developer';

import 'package:html/parser.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:sembast/sembast.dart';
import 'package:kenny_tv/src/db.dart';
import 'package:kenny_tv/src/models/episode_model/episode_model.dart';
import 'package:kenny_tv/src/models/season_model/season_model.dart';
import 'package:kenny_tv/src/utils/dio.dart';

part "episodes_provider.g.dart";

RegExp seasonLongIdRegExp = RegExp(
  r"(?<=arc:season:southpark\.intl:)[a-z0-9\-]+",
);

Future<List<Season>> processSeasonUrl(
  String url,
) async {
  final response = await dio.get(url);
  final document = parse(response.data);

  final dropDownList = document.body!.querySelector(
    "ul[data-testid='DropdownList']",
  );

  final listElements = dropDownList!.getElementsByTagName("li");

  List<Future<Season>> seasonFutures = [];

  // This fetches all seasons but the latest one
  for (var listElement in listElements) {
    final aTag = listElement.getElementsByTagName("a").first;

    if (!aTag.attributes.containsKey("href")) {
      continue;
    }

    final seasonUrl = aTag.attributes["href"]!;
    final seasonFuture = dio
        .get<String>("https://www.southpark.de$seasonUrl")
        .then((htmlResponse) {
      final seasonLongId =
          seasonLongIdRegExp.firstMatch(htmlResponse.data!)![0]!;

      return Season.fromUrl(
          seasonUrl, "mgid:arc:season:southpark.intl:$seasonLongId");
    });

    seasonFutures.add(seasonFuture);
  }

  return await Future.wait(seasonFutures);
}

Future<List<Season>> fetchSeasons() async {
  final allSeasonsExceptLatest =
      await processSeasonUrl("https://www.southpark.de/seasons/south-park");
  final allSeasonsExceptFirst = await processSeasonUrl(
      "https://www.southpark.de${allSeasonsExceptLatest.first.url}");

  final allSeasons =
      Set<Season>.from(allSeasonsExceptFirst + allSeasonsExceptLatest).toList();

  allSeasons.sort((a, b) => a.number.compareTo(b.number));

  return allSeasons;
}

Future<Episodes> fetchEpisodesForSeason(Season season) async {
  final episodesResponse = await dio.get<String>(
      "https://www.southpark.de/api/context/${season.encodedSeasonId}/episode/1/30/ascending");

  final json = jsonDecode(episodesResponse.data!) as Map<String, dynamic>;

  // Remove entries, where the episode is not available
  // This can be looked up by checking if ["media"]["lockedLabel"] is not null
  json["items"]
      .removeWhere((episode) => episode["media"]["lockedLabel"] != null);

  final episodes =
      Episodes.fromJson({"episodes": json["items"], "season": season.toJson()});

  return episodes;
}

Future<List<Episodes>> fetchEpisodes(List<Season> seasons) async {
  final List<Future<Episodes>> futures = [];
  for (var season in seasons) {
    final future = fetchEpisodesForSeason(season);
    futures.add(future);
  }

  final results = await Future.wait(futures);
  results.sort(
    (a, b) => a.season.number.compareTo(b.season.number),
  );

  return results;
}

@riverpod
Future<List<Episodes>> episodes(EpisodesRef ref) async {
  // Start stopwatch
  Stopwatch stopwatch = Stopwatch()..start();

  final store = Storage.getStore();
  final db = await Storage.getDb();

  // TODO: Enable/Disable this line to clear the cache in case, the data structure has changed
  // await store.record("seasons").delete(db);

  final seasonRecords = await store.record("seasons").get(db) as List<Object?>?;
  var seasons = Season.fromJsonList(seasonRecords);

  if (seasons == null) {
    seasons = await fetchSeasons();
    await store.record("seasons").put(db, Season.toJsonList(seasons));
  }

  final episodes = await fetchEpisodes(seasons);

  log("Episodes fetched in ${stopwatch.elapsedMilliseconds}ms");

  return episodes;
}
