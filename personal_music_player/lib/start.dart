import 'dart:io';

import 'package:flutter/material.dart';
import 'package:file_picker/file_picker.dart';
import 'package:personal_music_player/copmonents/mini_player.dart';
import 'package:personal_music_player/main_pages/home_page.dart';
import 'package:personal_music_player/main_pages/downloads_page.dart';
import 'package:personal_music_player/main_pages/playlist_page.dart';
import 'package:personal_music_player/main_pages/search_page.dart';

class StartPage extends StatefulWidget {
  @override
  StartPage_State createState() => StartPage_State();
}

class StartPage_State extends State<StartPage> {
  final List<Widget> _pages = [
    HomePage(),
    SearchPage(),
    myPlaylistPage(),
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
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          _pages[_currentIndex],
          Positioned(
            bottom: 10.0, // Adjust the position as needed
            left: 0,
            right: 0,
            child: Center(
              child: miniPlayer(), // Your elevated container widget
            ),
          ),
        ],
      ),
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
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.library_music),
            label: 'Library',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.download_rounded),
            label: 'Downloads',
          ),
        ],
      ),
    );
  }
}
