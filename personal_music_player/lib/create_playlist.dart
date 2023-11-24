import 'dart:io';

import 'package:flutter/material.dart';
import 'package:file_picker/file_picker.dart';

class Create_Playlist extends StatefulWidget {
  @override
  Create_Playlist_State createState() => Create_Playlist_State();
}

class Create_Playlist_State extends State<Create_Playlist> {
  String? playlistImage;

  final TextEditingController _name_Controller = TextEditingController();
  final TextEditingController _description_Controller = TextEditingController();

  Future<void> _pickImage() async {
    final result = await FilePicker.platform.pickFiles(
      type: FileType.image,
      allowMultiple: false,
    );
    if (result != null) {
      PlatformFile file = result.files.first;

      if (true) {
        setState(() {
          playlistImage = file.path;
        });
      }
    } else {
      // User canceled the picker
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Create Playlist'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            TextField(
              decoration: InputDecoration(labelText: 'Playlist Title'),
              controller: _name_Controller,
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Playlist Description'),
              controller: _description_Controller,
            ),
            SizedBox(height: 20),
            Expanded(
              child: playlistImage != null
                  ? Image.file(File(playlistImage!))
                  : Image.asset('images/audio_default.png'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _pickImage,
              child: Text('Change Image'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                final playlistTitle = _name_Controller.text;
                final playlistDescription = _description_Controller.text;
                final image = playlistImage;

                // You can add logic here to handle the playlist creation
                // This is where you can navigate back or perform other actions
                // related to creating the playlist without using Hive.

                print(playlistTitle);
                print(playlistDescription);
                print(image);

                // Here, you can add your logic to handle playlist creation
                // and other actions without Hive database operations.

                Navigator.pop(context, true);
              },
              child: Text('Create Playlist'),
            ),
          ],
        ),
      ),
    );
  }
}
