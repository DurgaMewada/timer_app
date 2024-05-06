import 'package:flutter/material.dart';
import 'Screen/Analogue_Clock.dart';
import 'Screen/Digital_Clock.dart';
import 'Screen/Splash.dart';
import 'Screen/Strap_Watch.dart';

void main()
{
  runApp(MyApp(),);
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/':(contect) => SplashPage(),
        '/ana':(contect) => Analogue(),
        '/digital':(contect) => Digital(),
        '/strap':(contect) => Strap(),
      }
    );
  }
}
