import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SongPage extends StatelessWidget {
  final name;
  final image;
  const SongPage({Key? key, this.name, this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.grey[800],
        appBar: AppBar(
          backgroundColor: Colors.grey[800],
          leading: GestureDetector(
            child: Icon(
              CupertinoIcons.back,
              size: 30,
            ),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          elevation: 0,
        ),
        body: Column(
          children: [
            // SizedBox(height: 20),

            Expanded(
              flex: 2,
                child: Image.asset('assets/images/$image.jpg',)
            ),
            // SizedBox(height: 30),

            Expanded(
                flex: 1,
                child: Center(
                child: Text(
                  "$name",
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    color: Colors.white,
                  ),
                  textScaleFactor: 2.5,
                ),
              ),
            ),

            // SizedBox(height: 20),

            Expanded(
              flex: 2,
              child: Image.asset('assets/images/player.png',)
            ),
          ],
        ),
      ),
    );
  }
}
