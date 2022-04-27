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
    return ChangeNotifierProvider<customTheme>(
      create: (context) => customTheme(),
      builder: (context, _) => MaterialApp(
        debugShowCheckedModeBanner: false,
        themeMode: customTheme.currentTheme,
        theme: customTheme.lightTheme,
        darkTheme: customTheme.darkTheme,
        home: const Homepage(),
      ),
    );
  }
}
