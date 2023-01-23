import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:io';

import 'package:image_picker/image_picker.dart';

class CadastroImage extends StatefulWidget {
  const CadastroImage({super.key});

  @override
  State<CadastroImage> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<CadastroImage> {
  File? imageFile;

  Future getImage() async {
    try {
      final image = await ImagePicker().pickImage(
        source: ImageSource.gallery,
      );
      if (image == null) return;

      final imageTemporary = File(image.path);

      setState(() {
        imageFile = imageTemporary;
      });
    } on PlatformException catch (e) {
      print('Error to pick image: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
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
          //const Text('Button'),
        ],
      ),
    );
  }

  Future saveImage({required nameImage}) async {
    final FirebaseStorage fireFirebaseStorage = FirebaseStorage.instance;

    try {
      await fireFirebaseStorage
          // dando um nome pra imagem
          .ref('$nameImage.jpg')
          .child('$nameImage')
          // Upload imagem
          .putFile(
            File('$imageFile'),
            SettableMetadata(contentType: 'image/jpeg'),
          );

      print("Uploaded image");
    } on FirebaseException catch (e) {
      print(e);
    }
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
