import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:go_router/go_router.dart';
import 'package:kenny_tv/src/screens/test_screen/test_screen.dart';
import 'package:kenny_tv/src/screens/video_redirect_screen/video_redirect_screen.dart';
import 'package:kenny_tv/src/screens/video_screen/video_screen.dart';

import 'screens/home_screen/home_screen.dart';

// GoRouter config
final _router = GoRouter(
  routes: [
    GoRoute(
      path: "/",
      builder: (context, state) => const HomeScreen(),
    ),
    GoRoute(
      path: "/video",
      builder: (context, state) => const VideoScreen(),
      onExit: (context) {
        log("Exiting video screen");
        return true;
      },
    ),
    GoRoute(
      path: "/video_redirect",
      builder: (context, state) => const VideoRedirectScreen(),
      redirect: (context, state) {
        return "/video";
      },
    ),
    GoRoute(
      path: "/test",
      builder: (context, state) => const TestScreen(),
    ),
  ],
);

/// The Widget that configures your application.
class MyApp extends StatelessWidget {
  const MyApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    // _router.go("/test");

    // Glue the SettingsController to the MaterialApp.
    //
    // The ListenableBuilder Widget listens to the SettingsController for changes.
    // Whenever the user updates their settings, the MaterialApp is rebuilt.
    return MaterialApp.router(
      // Providing a restorationScopeId allows the Navigator built by the
      // MaterialApp to restore the navigation stack when a user leaves and
      // returns to the app after it has been killed while running in the
      // background.
      restorationScopeId: 'app',

      // Provide the generated AppLocalizations to the MaterialApp. This
      // allows descendant Widgets to display the correct translations
      // depending on the user's locale.
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('en', ''), // English, no country code
      ],

      // Use AppLocalizations to configure the correct application title
      // depending on the user's locale.
      //
      // The appTitle is defined in .arb files found in the localization
      // directory.

      // Define a light and dark color theme. Then, read the user's
      // preferred ThemeMode (light, dark, or system default) from the
      // SettingsController to display the correct theme.
      theme: ThemeData.dark(),

      debugShowCheckedModeBanner: false,

      routerConfig: _router,
    );
  }
}
