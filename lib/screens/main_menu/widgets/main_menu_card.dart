import 'package:flutter/material.dart';

class MainMenuCard extends StatelessWidget {
  final String image;
  final String text;
  final String rota;

  const MainMenuCard({
    super.key,
    required this.image,
    required this.text,
    required this.rota,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        // Code to execute when the card is tapped
        Navigator.pushNamed(context, '${rota}');
      },
      child: Card(
        child: Column(
          children: <Widget>[
            Image.asset(
              image,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: const EdgeInsets.all(13.0),
              child: Text(
                text.toString(),
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15.0,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
