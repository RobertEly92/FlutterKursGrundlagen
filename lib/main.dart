import 'package:flutter/material.dart';
import 'package:hw/application/theme_service.dart';
import 'package:hw/presentation/counter_app/counter_app_page.dart';
import 'package:hw/presentation/navigation_example_screens/screen1.dart';
import 'package:hw/presentation/navigation_example_screens/screen2.dart';
import 'package:hw/root.dart';
import 'package:hw/theme.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (context) => ThemeService(),
    child: const MainApp(),
  ));
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeService>(builder: (context, themeService, child) {
      return MaterialApp(
          theme: AppTheme.lightTheme,
          darkTheme: AppTheme.darkTheme,
          themeMode: themeService.isDarkModeOn ? ThemeMode.dark : ThemeMode.light,
          debugShowCheckedModeBanner: false,
          routes: <String, WidgetBuilder>{
            '/root': (BuildContext context) => const RootWidgetExample(),
            '/screen1': (BuildContext context) => const Screen1(),
            '/screen2': (BuildContext context) => const Screen2(),
          },
          home: const RootWidgetExample());
    });
  }
}
