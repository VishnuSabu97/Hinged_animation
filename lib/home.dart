import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
// @dart=2.9
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Staggered Grid View",
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

List<StaggeredTile> _cardTile = <StaggeredTile>[
  StaggeredTile.count(2, 2),
  StaggeredTile.count(2, 3),
  StaggeredTile.count(2, 2),
  StaggeredTile.count(2, 3),
  StaggeredTile.count(2, 2),
  StaggeredTile.count(2, 3),
  StaggeredTile.count(2, 2),
  StaggeredTile.count(2, 3),
  StaggeredTile.count(2, 2),
  StaggeredTile.count(2, 3),
];
List<Widget> _listTile = <Widget>[
  BackgroundTile(backgroundColor: Colors.blueAccent, iconData: Icons.add),
  BackgroundTile(
      backgroundColor: Colors.red, iconData: Icons.g_translate_sharp),
  BackgroundTile(
      backgroundColor: Colors.blueAccent, iconData: Icons.photo_library),
  BackgroundTile(backgroundColor: Colors.red, iconData: Icons.account_circle),
  BackgroundTile(
      backgroundColor: Colors.blueAccent, iconData: Icons.reddit_outlined),
  BackgroundTile(backgroundColor: Colors.red, iconData: Icons.safety_check),
  BackgroundTile(
      backgroundColor: Colors.blueAccent, iconData: Icons.pages_outlined),
  BackgroundTile(backgroundColor: Colors.red, iconData: Icons.radar_rounded),
  BackgroundTile(backgroundColor: Colors.blueAccent, iconData: Icons.cached),
  BackgroundTile(backgroundColor: Colors.red, iconData: Icons.hail),
];

class BackgroundTile extends StatelessWidget {
  final Color backgroundColor;
  final IconData iconData;

  BackgroundTile({
    required this.backgroundColor,
    required this.iconData,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: backgroundColor,
      child: Icon(iconData, color: Colors.white),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
        title: Text(
          "staggered Grid View",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Container(
        child: StaggeredGridView.count(
          crossAxisCount: 4,
          staggeredTiles: _cardTile,
          children: _listTile,
          crossAxisSpacing: 4.0,
          mainAxisSpacing: 4.0,
        ),
      ),
    );
  }
}
