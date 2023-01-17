import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:passaros_nordeste/route.dart';
import 'package:passaros_nordeste/themes.dart';

import 'constants.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    return const MaterialApp(
      title: 'Pássaros Nordeste',
      //theme: lightTheme,
      onGenerateRoute: Rotas.generateRoute,
      initialRoute: initialRoute,
      debugShowCheckedModeBanner: false,
    );
  }
}

void main() => runApp(const App());
