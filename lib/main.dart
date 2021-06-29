import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:spotify/widgets/playlist.dart';
import 'package:spotify/widgets/recent.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // themeMode: ThemeMode.dark,
      // theme: ThemeData(primarySwatch: Colors.indigo),
      // darkTheme: ThemeData(brightness: Brightness.dark),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.grey[800],
        body: SingleChildScrollView(
            child: Column(children: [
            //spotify
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 55, 0, 0),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(14, 0, 0, 0),
                    child: Image.asset(
                      'assets/images/spotify.png',
                      height: 60,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                    child: Text(
                      "spotify",
                      style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold
                      ),
                      textScaleFactor: 2.4,
                    ),
                  )
                ],
              ),
            ),
            
            //recent
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 20, 0, 0),
              child: Row(children: [
                Icon(
                  CupertinoIcons.clock_solid,
                  color: Colors.white,
                  size: 30,
                ),
                SizedBox(width: 10),
                Text(
                  "Recently played",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                  textScaleFactor: 1.5,
                )
              ]),
            ),

            //Rows
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
              child: Row(
                children: [
                  Expanded(
                    flex: 1, 
                    child: RecentSongs(name: "Copines", image: "cop", exten: "jpg",)
                  ),
                  SizedBox(width:10),
                  Expanded(
                    flex: 1,
                    child: RecentSongs(name: "Despasito", image: "des", exten: "jpg",)
                  ),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
              child: Row(
                children: [
                  Expanded(
                    flex: 1, 
                    child: RecentSongs(name: "Homura", image: "homura", exten: "jpg",)
                  ),
                  SizedBox(width:10),
                  Expanded(
                    flex: 1,
                    child: RecentSongs(name: "Frequency 75", image: "feq", exten: "jpg")
                  ),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
              child: Row(
                children: [
                  Expanded(
                    flex: 1, 
                    child: RecentSongs(name: "High Hopes", image: "hihp", exten: "jpg",)
                  ),
                  SizedBox(width:10),
                  Expanded(
                    flex: 1,
                    child: RecentSongs(name: "Bad Boy", image: "bad", exten: "jpg")
                  ),
                ],
              ),
            ),

            //Playlists
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 20, 0, 0),
              child: Row(children: [
                Icon(
                  CupertinoIcons.square_list_fill,
                  color: Colors.white,
                  size: 30,
                ),
                SizedBox(width: 10),
                Text(
                  "Playlists",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                  textScaleFactor: 1.5,
                )
              ]),
            ),

            //LIST
            Container(
              padding: EdgeInsets.fromLTRB(10,10,0,10),
              height: 200,
              child:ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Playlist(name: "liked songs", image: "like", path: "playlist",),
                  Playlist(name: "Discover weekly", image: "discover", path: "playlist",),
                  Playlist(name: "Daily Mix 1", image: "mix1", path: "playlist",),
                  Playlist(name: "Daily Mix 2", image: "mix2", path: "playlist",)
                ],
              ),
            ),

            //ARTISTS
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 20, 0, 0),
              child: Row(children: [
                Icon(
                  CupertinoIcons.person_fill,
                  color: Colors.white,
                  size: 30,
                ),
                SizedBox(width: 10),
                Text(
                  "Your favorite artists",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                  textScaleFactor: 1.5,
                )
              ]),
            ),

            //LIST
            Container(
              padding: EdgeInsets.fromLTRB(10,10,0,10),
              height: 200,
              child:ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Playlist(name: "Shirley Setia", image: "ss", path: "artist",),
                  Playlist(name: "DJ Snake", image: "dj", path: "artist",),
                  Playlist(name: "Selena Gomez", image: "sel", path: "artist",),
                  Playlist(name: "R3HAB", image: "r3", path: "artist",),
                  Playlist(name: "Ariana Grande", image: "ari", path: "artist",)
                ],
              ),
            ),
          ]),
        ),
      ),
    );
  }
}