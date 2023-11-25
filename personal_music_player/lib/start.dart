import 'dart:io';

import 'package:flutter/material.dart';
import 'package:file_picker/file_picker.dart';
import 'package:personal_music_player/home_page.dart';
import 'package:personal_music_player/playlist_page.dart';
import 'package:personal_music_player/downloads_page.dart';
import 'package:personal_music_player/search_page.dart';

class StartPage extends StatefulWidget {
  @override
  StartPage_State createState() => StartPage_State();
}

class StartPage_State extends State<StartPage> {
  final List<Widget> _pages = [
    HomePage(),
    SearchPage(),
    PlaylistPage(),
    DownloadsPage()
  ];

  int _currentIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext) {
    return Scaffold(
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: _onItemTapped,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Color.fromARGB(156, 0, 0, 0),
        unselectedItemColor: Colors.grey, // Set selected icon color
        selectedItemColor: Colors.white,
        iconSize: 40,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.library_music),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.download_rounded),
            label: '',
          ),
        ],
      ),
    );
  }
}
