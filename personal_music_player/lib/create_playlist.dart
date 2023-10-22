import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'model/PlaylistModel.dart';

class Create_Playlist extends StatefulWidget {
  @override
  Create_Playlist_State createState() => Create_Playlist_State();
}

class Create_Playlist_State extends State<Create_Playlist> {
  Box<PlaylistModel>? dataBox;
  PlaylistModel? currUser;
  void initState() {
    super.initState();
    Hive.initFlutter();
    dataBox = Hive.box<PlaylistModel>("playlistBox");
    currUser = dataBox?.get(1);
  }
  //final playlistBox = Hive.box<PlaylistModel>('playlistBox');

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
              // Add logic to save the entered song title to the playlist
            ),

            TextField(
              decoration: InputDecoration(labelText: 'Playlist Description'),
              // Add logic to save the entered song title to the playlist
            ),

            Expanded(
              child: Image.asset('images/audio_default.png'),
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
              onPressed: () {
                //final playlistBox = Hive.box<PlaylistModel>('playlistBox');
                //final retrievedPlaylist = playlistModel!.get(0);
                // Change the index to access a specific playlist
                //dataBox = Hive.box<PlaylistModel>("playlistBox");
                //currUser = dataBox?.get(0);
                if (currUser != null) {
                  // Print the details of the retrieved playlist
                  print("Retrieved playlist name: ${currUser?.playlistName}");
                  //print("Retrieved playlist songs: ${retrievedPlaylist.songs}");
                  //print("Retrieved playlist image: ${retrievedPlaylist.image}");
                } else {
                  print(
                      "Playlist not found"); // If the playlist at the specified index doesn't exist
                }
              },
              child: Text('Change Image'),
            ),

            SizedBox(height: 20),

            // Add Song button

            ElevatedButton(
              onPressed: () {
                final myPlaylist = PlaylistModel(
                  playlistName: 'My Playlist',
                  songs: ['Song 1', 'Song 2', 'Song 3'],
                  image:
                      '/path/to/playlist_image.png', // Replace with your actual image path
                );
                print("done");

                // You can use a dialog or a separate screen to add songs
              },
              child: Text('Add Playlist'),
            ),
          ],
        ),
      ),
    );
  }
}
