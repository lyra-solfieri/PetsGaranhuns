import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:passaros_nordeste/screens/lista_pets/widget/card_passaros.dart';

class ListaPassaros extends StatelessWidget {
  const ListaPassaros({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(165, 70, 2, 1),
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        centerTitle: true,
        title: Text(
          'Lista de Pets',
          style: GoogleFonts.acme(),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: const [
            CardImage(),
          ],
        ),
      ),
    );
  }
}
