import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:theme_management/themes/themes.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).backgroundColor,
          iconTheme: Theme.of(context).iconTheme,
          title: const Text("Flutter Theme Demo"),
          actions: [
            IconButton(
                onPressed: () {
                  Provider.of<customTheme>(context, listen: false)
                      .toogleTheme();
                }, //as whole UI need to be change so i am using Provider.of<T>(context)
                icon: const Icon(Icons.brightness_4_rounded)),
          ],
          toolbarTextStyle: Theme.of(context).textTheme.bodyText2,
          titleTextStyle: Theme.of(context).textTheme.headline6,
        ),
        body: const Center(
          child: Text(
            "Theme Demo",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 36),
          ),
        ));
  }
}
