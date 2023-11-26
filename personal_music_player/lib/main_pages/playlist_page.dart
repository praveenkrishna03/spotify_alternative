import 'dart:io';

import 'package:flutter/material.dart';
import 'package:file_picker/file_picker.dart';
import 'package:personal_music_player/copmonents/my_playlist_tile.dart';

class myPlaylistPage extends StatefulWidget {
  @override
  myPlaylistPage_State createState() => myPlaylistPage_State();
}

class myPlaylistPage_State extends State<myPlaylistPage> {
  @override
  Widget build(BuildContext) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 100,
            ),
            Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  " Your Playlists",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                  ),
                )),
            SizedBox(
              height: 20,
            ),
            myPlaylistTile(),
            myPlaylistTile(),
            myPlaylistTile(),
            myPlaylistTile(),
            myPlaylistTile(),
            myPlaylistTile(),
            myPlaylistTile(),
            myPlaylistTile(),
            myPlaylistTile(),
            myPlaylistTile(),
            myPlaylistTile(),
            myPlaylistTile(),
          ],
        ),
      ),
    );
  }
}
