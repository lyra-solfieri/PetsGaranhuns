import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:passaros_nordeste/screens/cadastro/widget/cadastro_form.dart';

class CadastraPassaro extends StatelessWidget {
  const CadastraPassaro({super.key});

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
          'Cadastro de Pets',
          style: GoogleFonts.acme(),
        ),
      ),
      body: SafeArea(
        child: ScrollConfiguration(
          behavior: const ScrollBehavior(),
          child: SingleChildScrollView(
            child: Center(
              child: Column(
                children: const [
                  CadastroForm(),
                  SizedBox(
                    height: 40,
                  ),
                  SizedBox(
                    height: 30,
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
