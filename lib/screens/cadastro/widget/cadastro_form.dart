import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:io';

import 'package:image_picker/image_picker.dart';

class CadastroForm extends StatefulWidget {
  const CadastroForm({super.key});

  @override
  State<CadastroForm> createState() => _CadastroFormState();
}

class _CadastroFormState extends State<CadastroForm> {
  TextEditingController foodController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();
  TextEditingController namePassaroController = TextEditingController();
  TextEditingController namePessoaController = TextEditingController();
  TextEditingController cidadePessoaController = TextEditingController();
  String? selectedRegion;
  final FirebaseStorage fireFirebaseStorage = FirebaseStorage.instance;

  File? imageFile;

  Future getImage() async {
    try {
      final image = await ImagePicker().pickImage(
        source: ImageSource.gallery,
      );
      if (image == null) return;

      setState(() {
        var imageTemporary = File(image.path);
        imageFile = imageTemporary;
      });
    } on PlatformException catch (e) {
      print('Error to pick image: $e');
    }
  }

  Future saveImage({required fileName}) async {
    const destination = 'files/';

    try {
      await fireFirebaseStorage
          // dando um nome pra imagem
          .ref(destination)
          .child('$fileName')
          // Upload imagem
          .putFile(imageFile!
              // File(),
              // SettableMetadata(contentType: 'image/jpeg'),
              );

      print("Uploaded image");
    } on FirebaseException catch (e) {
      print('erro do firebase storage: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    List<String> regions = ['Meio-Norte', 'Sertão', 'Agreste', 'Zona da Mata'];

    const space = SizedBox(height: 15);

    return SizedBox(
      width: 250,
      child: Center(
        child: Column(
          children: [
            Center(
              child: Column(
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  imageFile != null
                      ? Image.file(
                          imageFile!,
                          width: 200,
                          height: 200,
                          fit: BoxFit.cover,
                        )
                      : Image.network(
                          'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fi.pinimg.com%2F736x%2F6d%2F69%2Fed%2F6d69ed03686ba6f8bc3338aac21e5ec2.jpg&f=1&nofb=1&ipt=42a4636fe53aadfd39f8b0e38f4ef9020886ba2e06c74f58383bc05db7995cc0&ipo=images',
                          width: 250,
                          height: 250,
                        ),
                  const SizedBox(
                    height: 10,
                  ),
                  custonButtom(
                    title: 'Escolher a imagem',
                    icon: Icons.image_outlined,
                    onCLick: getImage,
                  ),
                ],
              ),
            ),
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
                  space,
                  TextFormField(
                    controller: namePassaroController,
                    decoration: InputDecoration(
                      labelText: 'Nome do Pássaro',
                      labelStyle: GoogleFonts.acme(
                        color: const Color.fromRGBO(165, 70, 2, 1),
                      ),
                      border: const OutlineInputBorder(),
                      focusedBorder: const OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.black,
                        ),
                      ),
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Digite o nome do Pássaro";
                      }
                      return null;
                    },
                  ),
                  space,
                  TextFormField(
                    controller: foodController,
                    decoration: InputDecoration(
                      labelText: 'Comidas',
                      labelStyle: GoogleFonts.acme(
                        color: const Color.fromRGBO(165, 70, 2, 1),
                      ),
                      border: const OutlineInputBorder(),
                      focusedBorder: const OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.black,
                        ),
                      ),
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Digite pelo menos uma comida do pássaro";
                      }
                      return null;
                    },
                  ),
                  space,
                  TextFormField(
                    controller: descriptionController,
                    decoration: InputDecoration(
                      labelText: 'Descrição do pássaro',
                      labelStyle: GoogleFonts.acme(
                        color: const Color.fromRGBO(165, 70, 2, 1),
                      ),
                      border: const OutlineInputBorder(),
                      focusedBorder: const OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.black,
                        ),
                      ),
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "";
                      }
                      return null;
                    },
                  ),
                  space,
                  TextFormField(
                    controller: namePessoaController,
                    decoration: InputDecoration(
                      labelText: 'Seu Nome',
                      labelStyle: GoogleFonts.acme(
                        color: const Color.fromRGBO(165, 70, 2, 1),
                      ),
                      border: const OutlineInputBorder(),
                      focusedBorder: const OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.black,
                        ),
                      ),
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Digite seu nome";
                      }
                      return null;
                    },
                  ),
                  space,
                  TextFormField(
                    controller: cidadePessoaController,
                    decoration: InputDecoration(
                      labelText: 'Sua Cidade',
                      labelStyle: GoogleFonts.acme(
                        color: const Color.fromRGBO(165, 70, 2, 1),
                      ),
                      border: const OutlineInputBorder(),
                      focusedBorder: const OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.black,
                        ),
                      ),
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Digite sua cidade";
                      }
                      return null;
                    },
                  ),
                  space,
                  custonButtom(
                    title: 'Salvar Pássaro',
                    icon: Icons.save,
                    onCLick: (() {
                      saveImage(
                          fileName:
                              '${namePassaroController.text}_${namePessoaController.text}');
                      saveData();
                      Navigator.pop(context);
                    }),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Future saveData() async {
    final FirebaseDatabase database = FirebaseDatabase.instance;
    //Pegar a url da imagem
    // var imageRef = fireFirebaseStorage.ref().child(
    //     'gs://passaros-ec49a.appspot.com/files/${namePassaroController.text}_${namePessoaController.text}');
    // String imageUrl = await imageRef.getDownloadURL();
    // print(imageUrl);

    Map<String, dynamic> passaro = {
      "name": namePassaroController.text,
      "region": selectedRegion.toString(),
      "description": descriptionController.text,
      "user": {
        "name": namePessoaController.text,
        "city": cidadePessoaController.text,
      },
      "imageUrl": 'imageUrl',
    };

    String? passaroId = database.ref().child("passaro").push().key;
    database
        .ref()
        .child("passaro/")
        .child(passaroId!)
        .set(passaro)
        .then((_) => print("passaro adicionado"))
        .catchError((error) => print("Error passaro: $error"));
  }
}

Widget custonButtom({
  required String title,
  required IconData icon,
  required VoidCallback onCLick,
}) {
  return SizedBox(
    width: 250,
    height: 50,
    child: ElevatedButton(
      style: ElevatedButton.styleFrom(
        textStyle: GoogleFonts.acme(),
        backgroundColor: const Color.fromRGBO(
          165,
          70,
          2,
          1,
        ),
      ),
      onPressed: onCLick,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon),
          Text(
            title,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    ),
  );
}
