import 'package:flutter/material.dart';
import 'package:personal_music_player/create_playlist.dart';
import 'package:personal_music_player/phone_auth.dart';

void main() {
  runApp(const MyApp());
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
      home: PhoneAuthPage(),
    );
  }
}
