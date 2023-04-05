import 'package:flutter/material.dart';
import 'package:top10stat/screensplash.dart';

void main() => runApp(MaterialApp(
      theme: ThemeData(primaryColor: Color.fromARGB(244, 255, 255, 255)),
      initialRoute: '/',
      routes: {
        '/': (context) => splashScreens(),
      },
      debugShowCheckedModeBanner: false,
    ));
