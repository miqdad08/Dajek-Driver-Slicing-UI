import 'dart:async';

import 'package:dajek_driver/ui/login/login_screen.dart';
import 'package:dajek_driver/utils/constant.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  startSplashScreen()async{
    var duration = Duration(seconds: 3);
    return Timer(duration, (){
      Navigator.push(context, MaterialPageRoute(builder: (context)=> LoginScreen()));
    });
  }

  @override
  void initState() {
    super.initState();
    startSplashScreen();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 45),
              child: Image.asset(imageDajek, width: 225,),
            ),
            Text(
              'Ojeknyo Rang Ranah Minang',
              style: textSplash,
            ),
          ],
        ),
      ),
    );
  }
}

