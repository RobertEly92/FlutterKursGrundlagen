import 'package:flutter/material.dart';

class RectImage extends StatelessWidget {
  const RectImage({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 100,
      height: 100,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Image.asset('assets/images/SVLogo.png', fit: BoxFit.cover,),
      ),
    );
  }
}