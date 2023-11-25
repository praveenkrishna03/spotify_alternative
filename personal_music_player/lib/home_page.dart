import 'dart:io';

import 'package:flutter/material.dart';
import 'package:file_picker/file_picker.dart';

class HomePage extends StatefulWidget {
  @override
  HomePage_State createState() => HomePage_State();
}

class HomePage_State extends State<HomePage> {
  @override
  Widget build(BuildContext) {
    return Scaffold(
        body: Center(
      child: Text("Home"),
    ));
  }
}
