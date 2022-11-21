import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
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
        child: StaggeredGrid.count(
          crossAxisCount: 4,
          crossAxisSpacing: 4.0,
          mainAxisSpacing: 4.0,
          children: [
            StaggeredGridTile.count(
              crossAxisCellCount: 2,
              mainAxisCellCount: 2,
              child: BackgroundTile(
                  backgroundColor: Colors.blueAccent, iconData: Icons.add),
            ),
            StaggeredGridTile.count(
              crossAxisCellCount: 2,
              mainAxisCellCount: 1,
              child: BackgroundTile(
                  backgroundColor: Colors.red, iconData: Icons.photo_library),
            ),
            StaggeredGridTile.count(
              crossAxisCellCount: 2,
              mainAxisCellCount: 2,
              child: BackgroundTile(
                  backgroundColor: Colors.blueAccent,iconData: Icons.account_circle),
            ),
            StaggeredGridTile.count(
              crossAxisCellCount: 2,
              mainAxisCellCount: 1,
              child: BackgroundTile(
                  backgroundColor: Colors.red, iconData: Icons.safety_check),
            ),
            StaggeredGridTile.count(
              crossAxisCellCount: 2,
              mainAxisCellCount: 2,
              child: BackgroundTile(
                  backgroundColor: Colors.blueAccent, iconData: Icons.pages_outlined),
            ),
            StaggeredGridTile.count(
              crossAxisCellCount: 2,
              mainAxisCellCount: 1,
              child: BackgroundTile(backgroundColor: Colors.red, iconData: Icons.ac_unit),
            ),
            StaggeredGridTile.count(
              crossAxisCellCount: 2,
              mainAxisCellCount: 2,
              child: BackgroundTile(
                  backgroundColor: Colors.blueAccent, iconData: Icons.access_time),
            ),
            StaggeredGridTile.count(
              crossAxisCellCount: 2,
              mainAxisCellCount: 1,
              child: BackgroundTile(
                  backgroundColor: Colors.red, iconData: Icons.fmd_good_rounded),
            ),
            StaggeredGridTile.count(
              crossAxisCellCount: 2,
              mainAxisCellCount: 2,
              child: BackgroundTile(
                  backgroundColor: Colors.blueAccent, iconData: Icons.hail),
            ),
            StaggeredGridTile.count(
              crossAxisCellCount: 2,
              mainAxisCellCount: 1,
              child: BackgroundTile(
                  backgroundColor: Colors.red, iconData: Icons.table_bar),
            ),
          ],
        ),
      ),
    );
  }
}
