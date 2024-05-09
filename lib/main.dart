import 'package:flutter/material.dart';
import 'package:recipes_app_flutter/core/approuter.dart';
import 'package:recipes_app_flutter/core/di.dart';

void main() async {
  await initAsyncSingletons();
  initDI();
  await getIt.allReady();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    var colorSeed = Colors.green;

    return MaterialApp.router(
      routeInformationProvider: AppRouter.router.routeInformationProvider,
      routeInformationParser: AppRouter.router.routeInformationParser,
      routerDelegate: AppRouter.router.routerDelegate,
      title: 'Recipes',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: colorSeed),
          useMaterial3: true,
          brightness: Brightness.light),
      darkTheme: ThemeData(
          colorScheme: ColorScheme.fromSeed(
              seedColor: colorSeed, brightness: Brightness.dark),
          useMaterial3: true,
          brightness: Brightness.dark),
      themeMode: ThemeMode.dark,
    );
  }
}
