import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kenny_tv/src/models/season_model/season_model.dart';
import 'package:kenny_tv/src/providers/episodes_provider/episodes_provider.dart';
import 'package:kenny_tv/src/screens/home_screen/background.dart';
import 'package:kenny_tv/src/screens/home_screen/episode_info.dart';
import 'package:kenny_tv/src/screens/home_screen/episode_selector.dart';
import 'package:kenny_tv/src/screens/home_screen/season_selector.dart';

class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  ConsumerState<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends ConsumerState<HomeScreen> {
  var loading = true;
  List<Season> seasons = [];

  Widget buildContent() {
    if (loading) {
      return const CircularProgressIndicator();
    } else {
      return Stack(
        children: [
          // Background image
          const Background(),

          // Background Gradient
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: [
                    Colors.transparent,
                    Color.fromARGB(200, 0, 0, 0),
                  ],
                  stops: [
                    0.0,
                    0.75
                  ]),
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                const EpisodeInfo(),
                SeasonSelector(seasons: seasons),
                const EpisodeSelector(),
              ],
            ),
          ),
        ],
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final episodes = ref.watch(episodesProvider);

    episodes.whenData((value) {
      setState(() {
        seasons = value.map((e) => e.season).toList();
        loading = false;
      });
    });

    return Scaffold(
      body: Center(
        child: buildContent(),
      ),
    );
  }
}
