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
        body: Column(
          children: [
            SizedBox(
              height: 100,
            ),
            TextField(
              onChanged: (value) {
                setState(() {
                  //searchName=value;
                });
              },
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide.none),
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 8, vertical: 5),
                  filled: true,
                  fillColor: Color.fromARGB(255, 255, 255, 255),
                  hintText: 'Search',
                  prefixIcon: Icon(Icons.search)),
            ),
          ],
        ));
  }
}
