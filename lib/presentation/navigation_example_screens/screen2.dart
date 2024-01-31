import 'package:flutter/material.dart';
import 'package:hw/presentation/widgets_examples/widgets/custom_button.dart';

class Screen2 extends StatelessWidget {
  const Screen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.green, title: Text('Screen2'), centerTitle: true,),
      body: Center(
        child: Column(
          children: [
            CustomButton(onPressed: (){Navigator.of(context).pop();}, text: 'Navigate back', btnColor: Colors.green),
            const SizedBox(height: 20,),
            CustomButton(onPressed: (){Navigator.of(context).pushReplacementNamed('/screen1');}, text: 'go to screen1', btnColor: Colors.green),
          ],
        ),
      ),
    );
  }
}