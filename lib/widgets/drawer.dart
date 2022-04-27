import 'package:flutter/material.dart';

Widget drawer(context) {
  return Drawer(
    child: Column(
      children: [
        Container(
          color: Theme.of(context).backgroundColor,
          height: 300,
        ),
        const ListTile(
          title: Text(
            "Home",
          ),
          leading: Icon(Icons.home),
        ),
        const ListTile(
          title: Text("Home"),
          leading: Icon(
            Icons.home,
          ),
        ),
        const ListTile(
          title: Text("Home"),
          leading: Icon(Icons.home),
        ),
        const ListTile(
          title: Text("Home"),
          leading: Icon(Icons.home),
        ),
        const ListTile(
          title: Text("Home"),
          leading: Icon(Icons.home),
        ),
      ],
    ),
  );
}
