import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget with AutoRouteAware {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Text("Electchain.......")),
    );
  }
}
