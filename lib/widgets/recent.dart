import 'package:flutter/material.dart';
import 'package:spotify/page/song.dart';

class RecentSongs extends StatelessWidget {
  final String name;
  final String image;
  final String exten;
  const RecentSongs({Key? key, required this.name, required this.image, required this.exten})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => SongPage(name: name, image: image,)),
          );
        },
        child: Padding(
        padding: const EdgeInsets.fromLTRB(0, 0, 0, 5),
        child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: Colors.grey[900],
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.asset(
                      "assets/images/$image.$exten",
                      width: 50,
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: Text(
                    "$name",
                    style: TextStyle(color: Colors.white),
                    textScaleFactor: 1.2,
                  ),
                  ),
                ],
              ),
            )),
      ),
    );
  }
}