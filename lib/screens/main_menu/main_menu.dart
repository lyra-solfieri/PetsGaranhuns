import 'package:flutter/material.dart';
import 'package:passaros_nordeste/constants.dart';
import 'package:passaros_nordeste/screens/main_menu/widgets/main_menu_header.dart';
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
                MainMenuHeader()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
