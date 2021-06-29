import 'package:flutter/material.dart';

class Playlist extends StatelessWidget {
  final String name;
  final String image;
  final String path;
  const Playlist({ Key? key, required this.name, required this.image, required this.path }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0,0,10,0),
      child: Container(
        decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: Colors.grey[900],
            ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(8,8,8,16),
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.asset(
                  "assets/images/$path/$image.jpg",
                  width: 120,
                ),
              ),
            ),
            Expanded(
                child: Text(
                "$name",
                style: TextStyle(
                  color: Colors.white
                ),
                textScaleFactor: 1.2,
              ),
            )
          ],
        ),
      ),
    );
  }
}