import 'dart:io';

import 'package:flutter/material.dart';
import 'package:file_picker/file_picker.dart';
import 'package:personal_music_player/copmonents/downloaded_playlist_tile.dart';
import 'package:personal_music_player/copmonents/my_playlist_tile.dart';

class DownloadsPage extends StatefulWidget {
  @override
  DownloadsPage_State createState() => DownloadsPage_State();
}

class DownloadsPage_State extends State<DownloadsPage> {
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
                  " Downloaded Playlists",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                  ),
                )),
            SizedBox(
              height: 20,
            ),
            downloadedPlaylistTile(),
            downloadedPlaylistTile(),
            downloadedPlaylistTile(),
            downloadedPlaylistTile(),
            downloadedPlaylistTile(),
            downloadedPlaylistTile(),
            downloadedPlaylistTile(),
            downloadedPlaylistTile(),
          ],
        ),
      ),
    );
  }
}
