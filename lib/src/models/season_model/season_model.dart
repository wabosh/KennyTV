import 'package:freezed_annotation/freezed_annotation.dart';

part "season_model.freezed.dart";
part "season_model.g.dart";

@freezed
class Season with _$Season {
  static RegExp regexShortId = RegExp(r"(?<=south-park\/)[a-zA-Z0-9]+");
  static RegExp regexNumber = RegExp(r"(?<=staffel-)\d+");

  factory Season({
    required String url,
    required String shortId,
    required int number,
    required String seasonId,
    required String encodedSeasonId,
  }) = _Season;

  factory Season.fromJson(Map<String, dynamic> json) => _$SeasonFromJson(json);

  factory Season.fromUrl(String url, String seasonId) {
    final shortId = regexShortId.firstMatch(url)!.group(0)!;
    final number = int.parse(regexNumber.firstMatch(url)!.group(0)!);

    return Season(
      url: url,
      shortId: shortId,
      number: number,
      seasonId: seasonId,
      encodedSeasonId: Uri.encodeComponent(seasonId),
    );
  }

  static List<Season>? fromJsonList(List<Object?>? json) {
    if (json == null) {
      return null;
    }

    return json.map((e) {
      final m = e as Map<String, dynamic>;
      return Season.fromJson(m);
    }).toList();
  }

  static List<Map<String, dynamic>> toJsonList(List<Season> seasons) {
    return seasons.map((e) => e.toJson()).toList();
  }
}
