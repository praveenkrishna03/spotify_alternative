import 'dart:io';

import 'package:flutter/material.dart';
import 'package:file_picker/file_picker.dart';
import 'package:personal_music_player/Constants.dart';
//import 'package:spotify_sdk/spotify_sdk.dart';
import 'package:flutter/services.dart';
import 'package:personal_music_player/copmonents/mix_tile.dart';
import 'package:personal_music_player/copmonents/playlist_tile.dart';

class HomePage extends StatefulWidget {
  @override
  HomePage_State createState() => HomePage_State();
}

class HomePage_State extends State<HomePage> {
  final clientId = Constants.CLIENT_ID;
  final redirectUri = Constants.REDIRECT_URI;
  static const platform = MethodChannel('com.example.spotifysdk');

  bool _connected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: SingleChildScrollView(
            child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.only(
                      left: 0, top: 0), // Adjust margin as needed
                  width: 50, // Width of the container
                  height: 50, // Height of the container
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: AssetImage('images/logo.png'),
                      fit: BoxFit.fill,
                    ), // Change color as needed
                  ),
                ),
                SizedBox(
                    width: 250,
                    child: Text(
                      "Welcome Praveen",
                      style: TextStyle(color: Colors.white, fontSize: 24),
                    )),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.logout_rounded),
                  iconSize: 30,
                  color: Colors.white,
                )
              ],
            ),
            SizedBox(
              height: 30,
            ),
            SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        " Your Mix's",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                        ),
                      )),
                  Container(
                    height: 220,
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: <Widget>[
                          // Replace these with your desired widgets
                          mixTile(),
                          mixTile(),
                          mixTile(),
                          mixTile()
                          // Add more containers as needed
                        ],
                      ),
                    ),
                  ),
                  Container(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        " All Playlists",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                        ),
                      )),
                  playlistTile(),
                  playlistTile(),
                  playlistTile(),
                  playlistTile(),
                  SizedBox(
                    height: 100,
                  )
                ],
              ),
            ),
          ],
        )));
  }
}
