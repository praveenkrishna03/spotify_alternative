import 'dart:io';

import 'package:flutter/material.dart';
import 'package:file_picker/file_picker.dart';

class SearchPage extends StatefulWidget {
  @override
  SearchPage_State createState() => SearchPage_State();
}

class SearchPage_State extends State<SearchPage> {
  @override
  Widget build(BuildContext) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: Center(
          child: Text(
            "Search",
            style: TextStyle(color: Colors.white),
          ),
        ));
  }
}
