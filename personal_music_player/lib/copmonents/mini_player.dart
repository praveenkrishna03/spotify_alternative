import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:personal_music_player/auth/login.dart';

class miniPlayer extends StatefulWidget {
  @override
  miniPlayer_state createState() => miniPlayer_state();
}

class miniPlayer_state extends State<miniPlayer> {
  ScrollController _scrollController = ScrollController();
  Timer? _scrollTimer;
  bool shouldScroll = true;

  @override
  void initState() {
    super.initState();

    _scrollTimer = Timer.periodic(Duration(milliseconds: 50), (timer) {
      double maxExtent = _scrollController.position.maxScrollExtent;
      double currentOffset = _scrollController.offset;
      double targetOffset =
          currentOffset + 15; // Increase this value to change scrolling speed

      if (currentOffset >= maxExtent) {
        _scrollController.jumpTo(0.0); // Jump back to the start
        shouldScroll = false;
        _scrollTimer!.cancel();
        // Allow scrolling after reaching the start
      } else if (shouldScroll) {
        _scrollController.animateTo(
          targetOffset,
          duration: Duration(milliseconds: 500),
          curve: Curves.linear,
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {},
        child: Card(
          color: const Color.fromARGB(130, 255, 255, 255),
          elevation: 8, // Change the elevation as needed
          shape: RoundedRectangleBorder(
            borderRadius:
                BorderRadius.circular(15.0), // Adjust the border radius
          ),
          child: SizedBox(
            width: double.infinity,
            height: 80, // To stretch to the full available width
            child: Container(
                //color: const Color.fromARGB(113, 0, 0, 0),
                padding: EdgeInsets.all(16.0),
                child: Row(
                  children: [
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.0),
                        image: DecorationImage(
                          image: AssetImage('images/logo.png'),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    SizedBox(
                      width: 200,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Nee Kavithaigalaa",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 18),
                          ),
                          SizedBox(
                            // Adjust the height for better visibility
                            child: SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              controller: _scrollController,
                              child: Text(
                                "Pradeep Kumar, Dhibu Ninan Thomas", // Your long text here
                                style: TextStyle(
                                  color: Color.fromARGB(177, 255, 255, 255),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.add_circle_outlined),
                      iconSize: 35,
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.play_arrow_rounded),
                        iconSize: 35)
                  ],
                )),
          ),
        ));
  }
}
