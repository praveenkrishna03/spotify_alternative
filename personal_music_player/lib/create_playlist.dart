import 'dart:io';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:file_picker/file_picker.dart';
import 'package:path/path.dart' as path;
import 'package:path_provider/path_provider.dart';

import 'model/PlaylistModel.dart';

class Create_Playlist extends StatefulWidget {
  @override
  Create_Playlist_State createState() => Create_Playlist_State();
}

class Create_Playlist_State extends State<Create_Playlist> {
  //late Box<PlaylistModel> dataBox;
  PlaylistModel? currUser;
  String? playlistImage = null;
  void initState() {
    super.initState();
    Hive.initFlutter();
    Hive.registerAdapter(PlaylistModelAdapter());

    //openHiveBox();
    //dataBox = Hive.box<PlaylistModel>("playlistBox");
    //currUser = dataBox?.get(1);
  }
  //final playlistBox = Hive.box<PlaylistModel>('playlistBox');

  /*Future<void> openHiveBox() async {
    dataBox = await Hive.openBox<PlaylistModel>('playlistBox');
  }*/

  Future<String> saveImageLocally(String? filePath) async {
    if (filePath == null) {
      // Handle the case when filePath is null (no image picked)
      return ''; // You can return an empty string or another default value
    }

    final appDocumentsDirectory = await getApplicationDocumentsDirectory();
    final imagePath = '${appDocumentsDirectory.path}/playlist_image.png';

    final file = File(filePath);
    final savedFile = await file.copy(imagePath);

    return imagePath;
  }

  Future<void> addToBox(
      String playlistName, String imagePath, String description) async {
    final dataBox = await Hive.openBox<PlaylistModel>('playlistBox');
    print(description);
    final myPlaylist = PlaylistModel(
        playlistName: playlistName,
        songs: [],
        //image: imagePath,
        description: description);
    await dataBox.add(myPlaylist);
    await dataBox.close();
  }

  Future<void> retrieveDataFromBox() async {
    final box =
        await Hive.openBox<PlaylistModel>('playlistBox'); // Open the box

    if (box.isNotEmpty) {
      for (var i = 0; i < box.length; i++) {
        final playlist = box.getAt(i);
        print('Playlist Name: ${playlist?.playlistName}');
        print('Description: ${playlist?.description}');
        // Print other attributes as needed
      }
    } else {
      print('Box is empty');
    }

    await box.close(); // Close the box when you're done with it
  }

  final TextEditingController _name_Controller = TextEditingController();

  final TextEditingController _description_Controller = TextEditingController();

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
            // Text field for song title
            TextField(
              decoration: InputDecoration(labelText: 'Playlist Title'),
              controller: _name_Controller,
              // Add logic to save the entered song title to the playlist
            ),

            TextField(
              decoration: InputDecoration(labelText: 'Playlist Description'),
              controller: _description_Controller,
              // Add logic to save the entered song title to the playlist
            ),

            Expanded(
              child: playlistImage != null
                  ? Image.file(File(playlistImage!))
                  : Image.asset('images/audio_default.png'),
            ),

            // Image selection option (You can use ImagePicker for this)
            // Replace this with an actual image selection widget

            // List of songs
            /*
            Expanded(
              child: ListView.builder(
                itemCount: songs.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(songs[index]),
                    // Add an image icon or delete button to remove songs if needed
                  );
                },
              ),
            ),
            */

            ElevatedButton(
              onPressed: () async {
                final result = await FilePicker.platform.pickFiles(
                  type: FileType.image,
                  allowMultiple: false,
                );
                if (result != null) {
                  PlatformFile file = result.files.first;

                  print(file.name);
                  print(file.bytes);
                  print(file.size);
                  print(file.extension);
                  print(file.path);
                } else {
                  // User canceled the picker
                }
                if (result != null) {
                  PlatformFile file = result.files.first;
                  print(file
                      .name); // Check the name of the file to verify it's the correct file.

                  if (true) {
                    // Successfully read the file bytes
                    final savedImagePath = await saveImageLocally(file.path);
                    setState(() {
                      playlistImage = file.path;
                    });
                    print(savedImagePath);
                  } else {
                    // Handle the case when file.bytes is empty or null
                    // This may indicate that the file couldn't be read
                  }
                }
              },
              child: Text('Change Image'),
            ),

            SizedBox(height: 20),

            // Add Song button
            ElevatedButton(
              onPressed: () {
                retrieveDataFromBox();

                print("retrived");
              },
              child: Text('Retrive Data'),
            ),
            ElevatedButton(
              onPressed: () {
                String playlistTitle = _name_Controller.text;
                String playlistdescription = _description_Controller.text;
                print(playlistdescription);
                print(playlistTitle);

                addToBox(playlistTitle, playlistImage!, playlistdescription);

                print("done");
              },
              child: Text('Create Playlist'),
            ),
          ],
        ),
      ),
    );
  }
}
