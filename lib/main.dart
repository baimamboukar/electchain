import 'package:electchain/router/router.gr.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Electchain());
}

final _appRouter = AppRouter();

class Electchain extends StatelessWidget {
  const Electchain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: ThemeData(
          appBarTheme: const AppBarTheme(elevation: 0, centerTitle: true),
          primaryColor: const MaterialColor(0xFFFFF, <int, Color>{})),
      routerDelegate: _appRouter.delegate(),
      routeInformationParser: _appRouter.defaultRouteParser(),
    );
  }
}
