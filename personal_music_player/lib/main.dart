import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:personal_music_player/create_playlist.dart';
import 'Model/PlaylistModel.dart';

late Box box;
Future<void> main() async {
  await Hive.initFlutter();
  Hive.registerAdapter(PlaylistModelAdapter()); // Register the adapter
  await Hive.openBox<PlaylistModel>('playlistBox');
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Spotify_alternative',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: "Praveen's Music Player"),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Future<List<PlaylistModel>> getAllPlaylists() async {
    final box = await Hive.openBox<PlaylistModel>(
        'playlistBox'); // Replace 'your_box_name' with the actual name of your box
    final List<PlaylistModel> playlistList = box.values.toList();
    await box.close();
    return playlistList;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
        actions: [
          // Add Hive DevTools to your app
          //HiveDevTools(), // Add this line
        ],
      ),

      body: Center(
        child: Text(
          'You have pushed the button this many times:',
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => Create_Playlist(),
            ),
          );
          final playlists = await getAllPlaylists();

          for (int i = 0; i < playlists.length; i++) {
            print('Playlist $i:');
            print('Name: ${playlists[i].playlistName}');
            print('Songs: ${playlists[i].songs}');
            print('Description: ${playlists[i].description}');
            //print('Image: ${playlists[i].image}');
          }
          // Add the action you want for the floating button here.
        },
        child: Icon(Icons.add),
      ),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.endFloat, // Bottom right corner
    );
  }
}
