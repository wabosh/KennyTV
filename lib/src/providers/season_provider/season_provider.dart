import 'dart:collection';
import 'dart:developer';

import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:kenny_tv/src/models/season_model.old.dart';
import "package:html/parser.dart" show parse;
import 'package:kenny_tv/src/utils/dio.dart';

part "season_provider.g.dart";

RegExp seasonLongIdRegExp = RegExp(
  r"(?<=arc:season:southpark\.intl:)[a-z0-9\-]+",
);

Future<HashSet<Season>> processSeasonUrl(
  String url,
  HashSet<Season>? seasonSet,
) async {
  seasonSet ??= HashSet<Season>();
  final response = await dio.get(url);

  final document = parse(response.data);

  final dropDownList = document.body!.querySelector(
    "ul[data-testid='DropdownList']",
  );

  final listElements = dropDownList!.getElementsByTagName("li");

  // This fetches all seasons but the latestone
  for (var listElement in listElements) {
    final aTag = listElement.getElementsByTagName("a").first;

    if (!aTag.attributes.containsKey("href")) {
      continue;
    }

    final season = Season(seasonUrl: aTag.attributes["href"]!);
    seasonSet.add(season);
  }

  return seasonSet;
}

@riverpod
Future<List<Season>> season(SeasonRef ref) async {
  final stopwatch = Stopwatch()..start();

  final oldSeasons = await processSeasonUrl(
      "https://www.southpark.de/seasons/south-park", null);

  final firstSeasonElement = oldSeasons.first;

  final allSeasons = await processSeasonUrl(
      "https://www.southpark.de${firstSeasonElement.seasonUrl}", oldSeasons);

  var seasons = allSeasons.toList()
    ..sort((a, b) => a.seasonNumber.compareTo(b.seasonNumber));

  log("Took ${stopwatch.elapsedMilliseconds}ms to fetch seasons");
  return seasons;
}
