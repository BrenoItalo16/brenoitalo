import 'package:brenoitalo/screens/home.dart';
import 'package:flutter/material.dart';
import 'package:seo_renderer/seo_renderer.dart';

void main() {
  runApp(
    MaterialApp(
      navigatorObservers: [
        routeObserver,
      ],
      title: "Breno Italo",
      debugShowCheckedModeBanner: false,
      initialRoute: '/home',
      routes: {
        '/home': (context) => const Home(),
      },
      // home: Home(),
    ),
  );
}
