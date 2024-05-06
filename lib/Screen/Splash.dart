import 'dart:async';
import 'package:flutter/material.dart';
class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  Widget build(BuildContext context) {
    Timer(Duration(seconds: 3), () {
      Navigator.of(context).pushNamed('/ana');
    });
    return Scaffold(
      body: Column(
          children: [
            Icon(Icons.watch_later_outlined,size: 30,color: Colors.white,),
            Text(' Clock ',style: TextStyle(
                color: Colors.white,fontSize: 30,
                fontWeight: FontWeight.bold,
            ),),
          ],
        )
    );
  }
}
