import 'dart:io';

import 'package:flutter/material.dart';
import 'package:file_picker/file_picker.dart';

class PlaylistPage extends StatefulWidget {
  @override
  PlaylistPage_State createState() => PlaylistPage_State();
}

class PlaylistPage_State extends State<PlaylistPage> {
  @override
  Widget build(BuildContext) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: Center(
          child: Text(
            "Playlist",
            style: TextStyle(color: Colors.white),
          ),
        ));
  }
}
