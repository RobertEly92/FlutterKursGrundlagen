import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final Function onPressed;
  final String text;
  final Color btnColor;
  const CustomButton({super.key, required this.onPressed, required this.text, required this.btnColor});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onPressed()  ,
      child: Material(
        elevation: 10,
        borderRadius: BorderRadius.circular(8),
        child: Container(
          height: 30,
          width: 100,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8), color: btnColor),
          child: Center(child: Text(text, style: const TextStyle(fontSize: 16,fontWeight: FontWeight.bold, fontStyle: FontStyle.italic),)),
        
        ),
      ),
    );
  }
}
