import 'package:flutter/material.dart';
import 'package:passaros_nordeste/constants.dart';
import 'package:passaros_nordeste/screens/main_menu/main_menu.dart';

class Rotas {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case initialRoute:
        return MaterialPageRoute(
          builder: (_) => const MainMenu(),
        );

      // case categoryRoute:
      //   var category = settings.arguments as DesignPatternCategory;
      //   return MaterialPageRoute(
      //     builder: (_) => Category(
      //       category: category,
      //     ),
      //   );
      // case _DesignPatternRoutes.introductionRoute:
      //   var designPattern = settings.arguments as DesignPattern;
      //   return MaterialPageRoute(
      //     builder: (_) => DesignPatternDetails(
      //       designPattern: designPattern,
      //       example: Introduction(),
      //     ),
      //   );

      default:
        return MaterialPageRoute(
          builder: (_) => const MainMenu(),
        );
    }
  }
}
