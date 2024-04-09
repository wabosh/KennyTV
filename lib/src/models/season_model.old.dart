RegExp seasonShortIdRegExp = RegExp(r"(?<=south-park\/)[a-zA-Z0-9]+");
RegExp seasonNumberRegExp = RegExp(r"(?<=staffel-)\d+");

class Season {
  final String seasonUrl;
  late final String seasonShortId;
  late final int seasonNumber;

  Season({required this.seasonUrl}) {
    RegExpMatch? seasonShortIdMatch = seasonShortIdRegExp.firstMatch(seasonUrl);
    RegExpMatch? seasonNumberMatch = seasonNumberRegExp.firstMatch(seasonUrl);

    seasonShortId = seasonShortIdMatch![0]!;
    seasonNumber = int.parse(seasonNumberMatch![0]!);
  }

  @override
  int get hashCode => seasonShortId.hashCode;

  @override
  bool operator ==(Object other) {
    if (other is Season) {
      return other.seasonShortId == seasonShortId;
    }
    return false;
  }

  @override
  String toString() {
    return "Season(seasonShortId: $seasonShortId, seasonNumber: $seasonNumber)";
  }

  Map<String, dynamic> toJson() {
    return {
      "seasonUrl": seasonUrl,
      "seasonShortId": seasonShortId,
      "seasonNumber": seasonNumber,
    };
  }

  factory Season.fromJson(Map<String, dynamic> json) {
    return Season(
      seasonUrl: json["seasonUrl"],
    );
  }
}
