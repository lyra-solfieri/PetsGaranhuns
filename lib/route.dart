import 'package:flutter/material.dart';
import 'package:passaros_nordeste/constants.dart';
import 'package:passaros_nordeste/screens/cadastro/cadastrar_passaro.dart';
import 'package:passaros_nordeste/screens/lista_pets/lista_pets.dart';
import 'package:passaros_nordeste/screens/main_menu/main_menu.dart';

import 'screens/main_menu/splash.dart';

class Rotas {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case initialRoute:
        return MaterialPageRoute(
          builder: (_) => const MainMenu(),
        );

      case '/cadastrar_passaro':
        return MaterialPageRoute(
          builder: (_) => const CadastraPassaro(),
        );

      case '/lista_pets':
        return MaterialPageRoute(
          builder: (_) => const ListaPassaros(),
        );
      case '/splash':
        return MaterialPageRoute(
          builder: (_) => const SplashInitial(),
        );

      default:
        return MaterialPageRoute(
          builder: (_) => const MainMenu(),
        );
    }
  }
}
