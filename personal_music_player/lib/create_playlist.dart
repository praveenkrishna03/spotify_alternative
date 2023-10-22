import 'package:flutter/material.dart';

class Create_Playlist extends StatefulWidget {
  @override
  Create_Playlist_State createState() => Create_Playlist_State();
}

class Create_Playlist_State extends State<Create_Playlist> {
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
              child: ElevatedButton(
                onPressed: () {
                  // You can use a dialog or a separate screen to add songs
                },
                child: Text('Add Playlist'),
              ),
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

            // Add Song button

            ElevatedButton(
              onPressed: () {
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
