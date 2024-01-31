import 'package:flutter/material.dart';
import 'package:hw/presentation/widgets_examples/widgets/custom_button.dart';

class Screen1 extends StatelessWidget {
  const Screen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.yellow, title: Text('Screen1'), centerTitle: true,),
      body: Center(child: 
      CustomButton(onPressed: (){Navigator.of(context).pop();}, text: 'Navigate back', btnColor: Colors.yellow),),
    );
  }
}