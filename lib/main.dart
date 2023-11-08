import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          transform: GradientRotation(pi/4),
          colors: <Color>[
            Color(0xff0B2300),
            Color(0xff0E2500),
            Color(0xff13280E),
            Color(0xff041109),
        ]),

        image: DecorationImage(
            image: AssetImage('assets/Decorators.png'), fit: BoxFit.fill),
      ),
      child: Image.asset('assets/Logo.png'),
    );
  }
}
