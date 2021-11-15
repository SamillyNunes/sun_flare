import 'package:flutter/material.dart';
import 'package:sun_flare/presentation/home/home_module.dart';
import 'package:sun_flare/presentation/home/home_page.dart';

class Application extends StatelessWidget {
  const Application({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sun flare',
      theme: ThemeData(
        primarySwatch: Colors.orange,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomePage(
        homeState: HomeModule.homeState(),
      ),
    );
  }
}
