import 'package:flutter/material.dart';

class CardImage extends StatefulWidget {
  const CardImage({super.key});

  @override
  State<CardImage> createState() => _CardImageState();
}

class _CardImageState extends State<CardImage> {
  List<String> images = [
    'https://www.10wallpaper.com/wallpaper/1366x768/1401/bird_branch_sit-HD_Photo_wallpaper_1366x768.jpg',
    'https://www.10wallpaper.com/wallpaper/1366x768/1505/Colorful_Finch_Bird-Animal_HD_Wallpapers_1366x768.jpg',
    'https://i.pinimg.com/736x/e5/34/2e/e5342e75cf45db799ad90490c8f9a8dc.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: () => {
          //Adicionar detalhes
        },
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 1,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
          ),
          itemCount: images.length,
          itemBuilder: (BuildContext context, int index) {
            return Card(
              child: Column(
                children: [
                  Image.network(
                    images[index],
                    fit: BoxFit.cover,
                  ),
                  const Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text('test'),
                  )
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
