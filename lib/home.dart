import 'package:flutter/material.dart';
import 'hinged_animation.dart';
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HingedAnimation(),
    );
  }
}
