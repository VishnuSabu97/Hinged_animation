import 'package:flutter/animation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'dart:math';

class HingedAnimation extends StatefulWidget {
  const HingedAnimation({Key? key}) : super(key: key);

  @override
  State<HingedAnimation> createState() => _HingedAnimationState();
}

class _HingedAnimationState extends State<HingedAnimation>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation <double> rotateAnimattion;
  late Animation<double> slideAnimation;
  late Animation<double> opacityAnimation;
  void initState() {
    super.initState();
    animationController = AnimationController(
        vsync: this, duration: Duration(milliseconds: 200));
    rotateAnimattion = Tween(begin: 0.0, end: 0.15).animate(
      CurvedAnimation(
        parent: animationController,
        curve: Interval(
          0.9,
          0.5,
          curve: Curves.bounceInOut,
        ),
      ),
    );
    slideAnimation = Tween(end: 600.0, begin: 100.0).animate(
      CurvedAnimation(
        parent: animationController,
        curve: Interval(
          0.5,
          1.0,
          curve: Curves.fastOutSlowIn,
        ),
      ),
    );

    opacityAnimation = Tween(begin: 0.0,end: 1.0).animate(
      CurvedAnimation(
        parent: animationController,
        curve: Interval(
          0.5,
          1.0,
          curve: Curves.fastOutSlowIn,
        ),
      ),
    );
    dispose(){
      super.dispose();
      animationController.dispose();
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent.shade400,
        automaticallyImplyLeading: false,
        title: Text("Hinge"),
        centerTitle: true,
      ),
      body: AnimatedBuilder(
        animation:slideAnimation,
        builder: (context, child) =>Container(
          height: 150.0,
          width: 200.0,
          padding: EdgeInsets.all(0),
          margin: EdgeInsets.only(
            left: 100.0,
            top: slideAnimation.value,
          ),
          child: RotationTransition(
            turns: rotateAnimattion,
            child: Center(
              child: Text("yagfiuyerwgy!!",
                style: TextStyle(
                  color: Color.fromRGBO(100, 200, 300, opacityAnimation.value,
                  ),
                ),
              ),
            ),
          ),
        ) ,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.miniCenterFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          animationController.forward();
        },
        child: Icon(Icons.arrow_drop_down),
        backgroundColor: Colors.red,
      ),
    );
  }
}
