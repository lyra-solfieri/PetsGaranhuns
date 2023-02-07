import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_storage/firebase_storage.dart';

class CardImage extends StatefulWidget {
  const CardImage({super.key});

  @override
  State<CardImage> createState() => _CardImageState();
}

class _CardImageState extends State<CardImage> {
  final List<Widget> listImages = [];
  final FirebaseStorage fireFirebaseStorage = FirebaseStorage.instance;

  Future getDataPets() async {}

  Future getAnimalsImages() async {
    var imageRef = fireFirebaseStorage.ref().child('/files/');
    String imageUrl = await imageRef.getDownloadURL();
    print(imageUrl);
  }

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
          itemCount: listImages.length,
          itemBuilder: (BuildContext context, int index) {
            return Card(
              child: Column(
                children: [
                  Image.network(
                    "_list_images[index]",
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

            //   DatabaseReference ref = databaseReference.ref().child("passaro/");
            //   ref.onValue.listen((event) {
            //     DataSnapshot snapshot = event.snapshot;
            //     setState(() {
            //       if (snapshot.value is Map) {
            //         (snapshot.value as Map).forEach((key, value) {
            //           _list.add(Card(
            //             child: Column(
            //               children: <Widget>[
            //                 Image.network(
            //                   'https://www.10wallpaper.com/wallpaper/1366x768/1401/bird_branch_sit-HD_Photo_wallpaper_1366x768.jpg',
            //                   fit: BoxFit.cover,
            //                 ),
            //                 Text(value["name"]),
            //                 Text(
            //                   value["description"],
            //                 ),
            //               ],
            //             ),
            //           ));
            //         });
            //       }
            //     });
            //   });
            //   return null;
            // }

           // List<String> images = [
  //   'https://www.10wallpaper.com/wallpaper/1366x768/1401/bird_branch_sit-HD_Photo_wallpaper_1366x768.jpg',
  //   'https://www.10wallpaper.com/wallpaper/1366x768/1505/Colorful_Finch_Bird-Animal_HD_Wallpapers_1366x768.jpg',
  //   'https://i.pinimg.com/736x/e5/34/2e/e5342e75cf45db799ad90490c8f9a8dc.jpg',
  // ];