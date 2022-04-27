import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:theme_management/themes/themes.dart';
import 'package:theme_management/widgets/drawer.dart';

class Homepage extends StatefulWidget {
  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: drawer(context),
        appBar: AppBar(
          backgroundColor: Theme.of(context).backgroundColor,
          iconTheme: Theme.of(context).iconTheme,
          title: const Text(
            "Flutter Theme Demo",
            style: TextStyle(fontFamily: "ubuntu"),
          ),
          actions: [
            Consumer<customTheme>(
              builder: (context, value, child) => IconButton(
                  onPressed: () {
                    value.toogleTheme();
                  },
                  icon: customTheme.isDarkThemeEnable
                      ? const Icon(Icons.brightness_4_rounded)
                      : const Icon(Icons.dark_mode_rounded)),
            ),
          ],
          toolbarTextStyle: Theme.of(context).textTheme.bodyText2,
          titleTextStyle: Theme.of(context).textTheme.headline6,
        ),
        body: const Center(
          child: Text(
            "Theme Demo",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 36,
                fontFamily: "ubuntu"),
          ),
        ));
  }
}
