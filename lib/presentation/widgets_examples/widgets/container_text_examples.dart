import 'package:flutter/material.dart';

class ContainerTextExample extends StatelessWidget {
  const ContainerTextExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      //width: 300,
      decoration: BoxDecoration(
          color: Colors.grey,
          border: Border.all(color: Colors.black, width: 2),
          borderRadius: BorderRadius.circular(18)),
      child: Center(
          child: Material(
            borderRadius: BorderRadius.circular(8),
            elevation: 8,
            child: Container(
              alignment: Alignment.center,
                      height: 100,
                      width: 200,
                      decoration: BoxDecoration(color: Colors.blue, borderRadius: BorderRadius.circular(4)),
                      
                      child: const Text('my Text', style: TextStyle(fontStyle: FontStyle.italic, fontFamily: "Verdana", fontSize: 20), ),
                    ),
          )),
    );
  }
}
