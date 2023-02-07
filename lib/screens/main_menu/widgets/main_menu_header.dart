import 'package:flutter/material.dart';
import 'package:passaros_nordeste/constants.dart';

class MainMenuHeader extends StatelessWidget {
  const MainMenuHeader({super.key});
  static const textStyle = TextStyle(
    fontFamily: 'RobotoMedium',
    fontSize: 25.0,
    color: lightBackgroundColor,
  );
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.only(bottom: paddingL),
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [verdepapagaio, azulbeijaflor],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: const [
          Text(
            "Pássaros e aves do nosso Nordeste",
            style: textStyle,
          ),
          SizedBox(
            width: spaceM,
          ),
          Text(
            'Tudo sobre os bichos que nos encantam',
            style: textStyle,
          )
        ],
      ),
    );
  }
}
