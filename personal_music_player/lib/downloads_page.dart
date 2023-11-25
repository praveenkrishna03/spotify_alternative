import 'dart:io';

import 'package:flutter/material.dart';
import 'package:file_picker/file_picker.dart';

class DownloadsPage extends StatefulWidget {
  @override
  DownloadsPage_State createState() => DownloadsPage_State();
}

class DownloadsPage_State extends State<DownloadsPage> {
  @override
  Widget build(BuildContext) {
    return Scaffold(
        body: Center(
      child: Text("Downloads"),
    ));
  }
}
