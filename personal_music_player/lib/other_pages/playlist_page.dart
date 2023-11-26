import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:personal_music_player/copmonents/song_display.dart';

class playlistPage extends StatefulWidget {
  @override
  playlistPage_state createState() => playlistPage_state();
}

class playlistPage_state extends State<playlistPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: const Color.fromARGB(156, 0, 0, 0),
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back_ios_new_rounded),
            color: Colors.white,
          )),
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 400,
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('images/logo.png'),
                  fit: BoxFit.fill,
                ), // Change color as needed
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Playlist Name",
                    style: TextStyle(color: Colors.white, fontSize: 25),
                  ),
                  SizedBox(
                    height: 20,
                  )
                ],
              ),
            ),
            songDisplay(),
            songDisplay(),
            songDisplay(),
            songDisplay(),
            songDisplay(),
            songDisplay(),
            songDisplay(),
            songDisplay(),
            songDisplay(),
            songDisplay(),
            songDisplay(),
            songDisplay(),
          ],
        ),
      ),
    );
  }
}
