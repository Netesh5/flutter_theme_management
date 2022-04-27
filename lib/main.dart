import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:theme_management/screens/homepage.dart';
import 'package:theme_management/themes/themes.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => customTheme(),
      builder: (context, child) => MaterialApp(
        debugShowCheckedModeBanner: false,
        themeMode: Provider.of<customTheme>(context)
            .currentTheme, //as whole UI need to be change so i am using Provider.of<T>(context)
        theme: customTheme.lightTheme,
        darkTheme: customTheme.darkTheme,
        home: Homepage(),
      ),
    );
  }
}
