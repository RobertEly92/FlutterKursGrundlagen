import 'package:flutter/material.dart';
import 'package:hw/application/theme_service.dart';
import 'package:hw/presentation/theme_animation/widgets/moon.dart';
import 'package:hw/presentation/theme_animation/widgets/star.dart';
import 'package:hw/presentation/theme_animation/widgets/sun.dart';
import 'package:provider/provider.dart';

class ThemeAnimationPage extends StatelessWidget {
  const ThemeAnimationPage({super.key});

  @override
  Widget build(BuildContext context) {
    final themeData = Theme.of(context);
    return Consumer<ThemeService>(builder: (context, themeService, child) {
      return Scaffold(
        backgroundColor: themeData.scaffoldBackgroundColor,
        appBar: AppBar(
          actions: const [],
          centerTitle: true,
          backgroundColor: themeData.appBarTheme.backgroundColor,
          title: const Text('Theme Animation'),
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Material(
              elevation: 20,
              borderRadius: BorderRadius.circular(15),
              child: ConstrainedBox(
                constraints: const BoxConstraints(minWidth: double.infinity),
                child: Container(
                  height: 500,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      gradient: LinearGradient(
                          colors: themeService.isDarkModeOn
                              ? [
                                  const Color(0xFF94A9FF),
                                  const Color(0xFF6B66CC),
                                  const Color(0xFF200F75)
                                ]
                              : [
                                  const Color(0xDDFFFFA66),
                                  const Color(0xDDFFA057),
                                  const Color(0xDD940B99)
                                ],
                          begin: Alignment.bottomCenter,
                          end: Alignment.topCenter)),
                  child: Stack(
                    children: [
                      Positioned(top: 70, right: 50, child: Star()),
                      Positioned(top: 150, right: 260, child: Star()),
                      Positioned(top: 40, right: 200, child: Star()),
                      Positioned(top: 50, right: 150, child: Star()),
                      Positioned(top: 100, right: 200, child: Star()),
                      AnimatedPositioned(
                          duration: Duration(milliseconds: 500),
                          top: themeService.isDarkModeOn ? 100 : 130,
                          right: themeService.isDarkModeOn ? 100 : -40,
                          child: AnimatedOpacity(
                              duration: Duration(milliseconds: 300),
                              opacity: themeService.isDarkModeOn ? 1 : 0,
                              child: Moon())),
                      AnimatedPadding(
                          duration: const Duration(milliseconds: 200),
                          padding: EdgeInsets.only(
                              top: themeService.isDarkModeOn ? 110 : 50),
                          child: const Center(child: Sun())),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                          height: 225,
                          decoration: BoxDecoration(
                              color: themeService.isDarkModeOn
                                  ? themeData.appBarTheme.backgroundColor
                                  : themeData.colorScheme.primary,
                              borderRadius: const BorderRadius.only(
                                  bottomLeft: Radius.circular(15),
                                  bottomRight: Radius.circular(15))),
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text('Test Header',
                                    style: themeData.textTheme.displayLarge!
                                        .copyWith(fontSize: 16)),
                                const SizedBox(
                                  height: 20,
                                ),
                                Text(
                                  'test body',
                                  style: themeData.textTheme.bodyLarge!
                                      .copyWith(fontSize: 14),
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      'Dark Theme',
                                      style: themeData.textTheme.bodyLarge!
                                          .copyWith(fontSize: 14),
                                    ),
                                    const SizedBox(
                                      width: 20,
                                    ),
                                    Switch(
                                        value: themeService.isDarkModeOn,
                                        onChanged: (value) {
                                          Provider.of<ThemeService>(context,
                                                  listen: false)
                                              .toogleTheme();
                                        })
                                  ],
                                )
                              ]),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      );
    });
  }
}
