import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:hackathon/login_screen.dart';
import 'package:page_transition/page_transition.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    startTime();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(children: <Widget>[
      SingleChildScrollView(
        child: Column(
          children: <Widget>[
            const SizedBox(
              height: 150.0,
            ),
            Container(
              width: 200,
              height: 200,
              child: const Text("Market App"),
            ),
            const Center(
                child: SpinKitWave(
              color: Colors.white,
              size: 25,
            )),
          ],
        ),
      ),
    ]));
  }

  startTime() async {
    var duration = Duration(seconds: 2);
    return Timer(duration, route);
  }

  route() {
    checkFirstSeen();
  }

  void checkFirstSeen() {
    Navigator.push(
        context,
        PageTransition(
            type: PageTransitionType.rightToLeft, child: LoginScreen()));
  }
}
