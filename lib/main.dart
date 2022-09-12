import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

import 'core/constants/strings.dart';
import 'core/router/app_router.gr.dart';
import 'core/theme/app_theme.dart';
import 'core/utility/observers/simple_bloc_observer.dart';

void main() {
  Bloc.observer = SimpleBlocObserver();
  runApp(ValorantUniverseRemastered());
}

class ValorantUniverseRemastered extends StatelessWidget {
  ValorantUniverseRemastered({super.key});

  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: Strings.appName,

      debugShowCheckedModeBanner: false,

      //theme
      themeMode: ThemeMode.dark,
      theme: AppTheme.instance.lightTheme,
      darkTheme: AppTheme.instance.darkTheme,

      // routing
      routerDelegate: _appRouter.delegate(),
      routeInformationParser: _appRouter.defaultRouteParser(),
    );
  }
}