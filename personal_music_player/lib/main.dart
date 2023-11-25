import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:personal_music_player/create_playlist.dart';
import 'package:personal_music_player/auth/login.dart';
import 'package:personal_music_player/auth/phone_auth.dart';
import 'package:personal_music_player/constants.dart';
import 'package:personal_music_player/start.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  try {
    await Firebase.initializeApp(
        options: FirebaseOptions(
      apiKey: Constants.apiKey,
      appId: Constants.appId,
      messagingSenderId: Constants.messagingSenderId,
      projectId: Constants.projectId,
    ));
    runApp(const MyApp());
  } catch (e) {
    print('Error initializing Firebase: $e');
    // Handle the error condition here (e.g., show an error message)
  }
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Spotify_alternative',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
        useMaterial3: true,
      ),
      home: StartPage(),
    );
  }
}
