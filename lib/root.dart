import 'package:flutter/material.dart';
import 'package:hw/presentation/counter_app/counter_app_page.dart';
import 'package:hw/presentation/theme_animation/theme_animation_page.dart';
import 'package:hw/presentation/widgets_examples/widgetes_examples_page.dart';

class RootWidgetExample extends StatefulWidget {
  const RootWidgetExample({super.key});

  @override
  State<RootWidgetExample> createState() => _RootWidgetExampleState();
}

class _RootWidgetExampleState extends State<RootWidgetExample> {

  int _current_index = 0;



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(index: _current_index,children: [const WidgetsExamplesPage(), CounterAppPage(), ThemeAnimationPage()],),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) => setState(() {
          _current_index=value;
        }),
        currentIndex: _current_index, 
      unselectedItemColor: Colors.grey,
      selectedItemColor: Colors.white,
      backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
      items: const [
        BottomNavigationBarItem(
            icon: Icon(Icons.star), label: 'examples'),
        BottomNavigationBarItem(icon: Icon(Icons.add), label: 'counter'),
        BottomNavigationBarItem(icon: Icon(Icons.color_lens), label: 'theme'),
      ]),
    );
  }
}
