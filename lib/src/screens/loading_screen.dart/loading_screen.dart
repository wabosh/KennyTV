import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:kenny_tv/src/providers/episodes_provider/episodes_provider.dart';

class LoadingScreen extends ConsumerWidget {
  const LoadingScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final episodes = ref.watch(episodesProvider);
    episodes.whenData((value) {
      GoRouter.of(context).go("/home");
    });

    return const Scaffold(
      body: Center(
        child: Column(
          children: [
            CircularProgressIndicator(),
            SizedBox(
              height: 25.0,
            ),
            Text(
              "Beim ersten Start kann es ein paar Minuten dauern",
              style: TextStyle(color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
