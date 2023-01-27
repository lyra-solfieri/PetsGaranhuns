import 'package:flutter/material.dart';
import 'package:passaros_nordeste/constants.dart';
import 'package:passaros_nordeste/screens/main_menu/widgets/main_menu_card.dart';
import 'package:passaros_nordeste/screens/main_menu/widgets/main_menu_search.dart';

class MainMenu extends StatelessWidget {
  const MainMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ScrollConfiguration(
          behavior: const ScrollBehavior(),
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(paddingL),
            child: Column(
              children: const [
                MainMenuSearch(),
                SizedBox(
                  height: 25,
                ),
                //MainMenuHeader(),
                SizedBox(
                  height: 25,
                ),
                MainMenuCard(
                  image:
                      'https://i.pinimg.com/736x/e5/34/2e/e5342e75cf45db799ad90490c8f9a8dc.jpg',
                  text: 'Acessar lista completa dos pássaros',
                  rota: '/lista_passaros',
                ),
                SizedBox(
                  height: 25,
                ),
                MainMenuCard(
                  image:
                      'https://s2.best-wallpaper.net/wallpaper/1920x1440/1801/Two-birds-flying-goldfinch-wings_1920x1440.jpg',
                  text: 'Cadastrar um pássaro',
                  rota: '/cadastrar_passaro',
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
