import 'package:flutter/material.dart';
import 'package:hw/application/theme_service.dart';
import 'package:hw/presentation/widgets_examples/widgets/container_text_examples.dart';
import 'package:hw/presentation/widgets_examples/widgets/custom_button.dart';
import 'package:hw/presentation/widgets_examples/widgets/media_query_example.dart';
import 'package:hw/presentation/widgets_examples/widgets/page_view_example.dart';
import 'package:hw/presentation/widgets_examples/widgets/profile_picture.dart';
import 'package:hw/presentation/widgets_examples/widgets/rectangular_image.dart';
import 'package:hw/presentation/widgets_examples/widgets/row_expanded_example.dart';
import 'package:provider/provider.dart';

class WidgetsExamplesPage extends StatelessWidget {
  const WidgetsExamplesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[900],
        appBar: AppBar(
          actions: const [],
          leading: const Icon(
            Icons.home,
            size: 30,
          ),
          centerTitle: true,
          backgroundColor: Colors.blue[200],
          title: const Text('Widgets Examples'),
        ),
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const ContainerTextExample(),
                const SizedBox(
                  height: 50,
                ),
                const RowExpandedExample(),
                const SizedBox(
                  height: 50,
                ),
                const ProfilePicture(),
                const SizedBox(
                  height: 50,
                ),
                const RectImage(),
                const SizedBox(
                  height: 50,
                ),
                const MediaQueryExample(),
                const SizedBox(
                  height: 50,
                ),
                const PageViewExample(),
                const SizedBox(
                  height: 50,
                ),
                IconButton(
                  onPressed: () {
                    print('IButton pressed');
                  },
                  icon: const Icon(
                    Icons.home,
                    color: Colors.white,
                  ),
                  splashColor: Colors.blue,
                ),
                const SizedBox(
                  height: 50,
                ),
                TextButton(
                    onPressed: () {
                      print('TextButton pressed');
                    },
                    child: Text('TButton')),
                const SizedBox(
                  height: 50,
                ),
                CustomButton(
                  onPressed: () => Navigator.of(context).pushNamed('/screen2'),
                  text: 'go to screen2',
                  btnColor:  Colors.green[200]!,
                ),
                const SizedBox(
                  height: 50,
                ),
                CustomButton(
                  onPressed: () => Navigator.of(context).pushNamed('/screen1'),
                  text: 'go to screen1',
                  btnColor:  Colors.blue[200]!,
                ),
                const SizedBox(
                                width: 20,
                              ),
                      Switch(value: Provider.of<ThemeService>(context).isDarkModeOn, onChanged: (value) {
                                Provider.of<ThemeService>(context, listen: false).toogleTheme();
                              })
              ],
            ),
          ),
        ));
  }
}
