import 'package:flutter/material.dart';
import 'package:hw/application/theme_service.dart';
import 'package:provider/provider.dart';

class Star extends StatelessWidget {
  const Star({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeService>(builder: (context, themeService, child){
      return AnimatedOpacity(
        duration: Duration(milliseconds: 200),
        opacity: themeService.isDarkModeOn ? 1: 0,
        child: Container(
          width: 2,
          height: 2,
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: const Color(0xFFC9E9FC),
              boxShadow: [
                BoxShadow(
                    color: const Color(0xFFC9E9FC).withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7, offset: const Offset(0,0))
              ]),
        ),
      );}
    );
  }
}
