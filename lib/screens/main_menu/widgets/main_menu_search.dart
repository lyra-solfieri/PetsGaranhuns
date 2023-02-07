import 'package:flutter/material.dart';
import 'package:passaros_nordeste/constants.dart';

class MainMenuSearch extends StatelessWidget {
  const MainMenuSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: lightBackgroundColor,
        borderRadius: BorderRadius.all(Radius.circular(10)),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            offset: Offset(5, 5),
            blurRadius: 10,
          ),
        ],
      ),
      child: TextField(
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.all(10),
          border: InputBorder.none,
          hintText: "Procurar Animal",
          prefixIcon: const Icon(Icons.search),
          suffixIcon: IconButton(
            icon: const Icon(Icons.clear),
            onPressed: () {
              // Clear the text field
            },
          ),
        ),
        onChanged: (value) {
          // Handle the change in the text field
        },
        onTap: () {
          // Handle the tap on the text field
        },
      ),
    );
  }
}
