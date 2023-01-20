import 'package:flutter/material.dart';
import 'package:passaros_nordeste/screens/cadastro/widget/cadastro_form.dart';
import 'package:passaros_nordeste/screens/cadastro/widget/cadastro_image.dart';

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
        title: const Text('Cadastro de Pássaros'),
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              const CadastroImage(),
              const CadastroForm(),
              const SizedBox(
                height: 40,
              ),
              custonButtom(
                title: 'Salvar Pássaro',
                icon: Icons.save,
                onCLick: (() => {}),
              )
            ],
          ),
        ),
      ),
    );
  }
}
