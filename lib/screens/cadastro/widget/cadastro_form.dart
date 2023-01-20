import 'package:flutter/material.dart';

class CadastroForm extends StatefulWidget {
  const CadastroForm({super.key});

  @override
  State<CadastroForm> createState() => _CadastroFormState();
}

class _CadastroFormState extends State<CadastroForm> {
  @override
  Widget build(BuildContext context) {
    List<String> regions = ['Region 1', 'Region 2', 'Region 3', 'sertão'];
    String? selectedRegion;

    TextEditingController _foodController = TextEditingController();
    TextEditingController _descriptionController = TextEditingController();

    return SizedBox(
      width: 250,
      child: Center(
        child: Column(
          children: [
            Form(
              child: Column(
                children: <Widget>[
                  const SizedBox(
                    height: 30,
                  ),

                  DropdownButtonFormField(
                    hint: const Text('Selecione a região'),
                    decoration: const InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.black,
                          width: 1,
                        ),
                      ),
                    ),
                    value: selectedRegion,
                    items: regions.map((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(
                          value,
                          style: const TextStyle(
                            fontSize: 20,
                          ),
                        ),
                      );
                    }).toList(),
                    onChanged: (value) {
                      setState(() {
                        selectedRegion = value;
                      });
                    },
                  ),

                  //
                  TextFormField(
                    decoration:
                        const InputDecoration(labelText: 'Nome do Pássaro'),
                  ),
                  TextFormField(
                    decoration: const InputDecoration(labelText: 'Comidas'),
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                        labelText: 'Descrição do pássaro'),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
