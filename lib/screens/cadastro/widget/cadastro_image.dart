import 'package:flutter/material.dart';
import 'dart:io';

import 'package:image_picker/image_picker.dart';

class CadastroImage extends StatefulWidget {
  const CadastroImage({super.key});

  @override
  State<CadastroImage> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<CadastroImage> {
  File? _image;

  Future GetImage() async {
    final image = await ImagePicker().pickImage(
      source: ImageSource.gallery,
    );
    if (image == null) return;
    final ImageTemporary = File(image.path);
    setState(() {
      this;
      _image;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Image.network(
              'https://s2.best-wallpaper.net/wallpaper/1920x1440/1801/Two-birds-flying-goldfinch-wings_1920x1440.jpg'),
          const SizedBox(
            height: 30,
          ),
          custonButtom(
            title: 'escolhar a imagem',
            icon: Icons.image_outlined,
            onCLick: () => {},
          ),
          const Text('Button'),
        ],
      ),
    );
  }
}

Widget custonButtom({
  required String title,
  required IconData icon,
  required VoidCallback onCLick,
}) {
  return Container(
    width: 250,
    height: 50,
    child: ElevatedButton(
      onPressed: onCLick,
      child: Row(
        children: [
          Icon(icon),
          Text(title),
        ],
      ),
    ),
  );
}
