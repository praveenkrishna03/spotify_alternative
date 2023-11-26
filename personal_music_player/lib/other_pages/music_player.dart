import 'package:flutter/material.dart';

class musicPlayer extends StatefulWidget {
  @override
  musicPlayer_state createState() => musicPlayer_state();
}

class musicPlayer_state extends State<musicPlayer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.keyboard_arrow_down_rounded),
          iconSize: 25,
          color: Colors.white,
        ),
        title: Center(
          child: Column(
            children: [
              Text(
                "Playing from Playlist",
                style: TextStyle(fontSize: 12, color: Colors.white),
              ),
              Text(
                "My Playlist",
                style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              )
            ],
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              showMenu(
                color: Color.fromARGB(148, 0, 0, 0),
                context: context,
                position: RelativeRect.fromLTRB(
                    100, 100, 0, 0), // Adjust the position as needed
                items: [
                  PopupMenuItem(
                    child: Text(
                      'Remove From Playlist',
                      style: TextStyle(color: Colors.white),
                    ),
                    value: 1,
                  ),
                  PopupMenuItem(
                    child: Text(
                      'Add to another Playlist',
                      style: TextStyle(color: Colors.white),
                    ),
                    value: 2,
                  ),
                  PopupMenuItem(
                    child: Text(
                      'Add to Favourites',
                      style: TextStyle(color: Colors.white),
                    ),
                    value: 3,
                  ),
                ],
                elevation: 8.0, // Adjust the elevation as needed
              ).then((value) {
                if (value != null) {
                  // Handle the selected option here
                  switch (value) {
                    case 1:
                      // Perform action for Option 1
                      break;
                    case 2:
                      // Perform action for Option 2
                      break;
                    case 3:
                      // Perform action for Option 3
                      break;
                    default:
                      break;
                  }
                }
              });
            },
            icon: Icon(Icons.more_vert),
            iconSize: 25,
            color: Colors.white,
          )
        ],
      ),
      body: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          Center(
              child: Container(
            margin: EdgeInsets.only(left: 10, top: 10, right: 10, bottom: 10),
            height: 350,
            width: 350,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                image: AssetImage('images/logo.png'),
                fit: BoxFit.fill,
              ), // Change color as needed
            ),
          )),
          Container(
            margin: EdgeInsets.only(left: 30, top: 50, right: 10, bottom: 10),
            height: 80,
            width: double.infinity,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 250,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Nee Kavithaigala",
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "Pradeep Kumar, Dhibu Ninan Thomas",
                        style: TextStyle(fontSize: 12, color: Colors.white),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  width: 50,
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.favorite_outline_rounded),
                  iconSize: 30,
                  color: Colors.white,
                )
              ],
            ),
          ),
          Container(
            height: 50,
            width: double.infinity,
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Your other content goes here

                // Seekable progress bar
                Slider.adaptive(
                  value: 50, // Set the current value of the slider
                  min: 0.0, // Minimum value
                  max: 100, // Maximum value based on audio duration
                  onChanged: (double value) {
                    setState(() {
                      // _currentSliderValue =   value; // Update the current slider value
                    });
                  },
                  onChangeEnd: (double value) {
                    // When the user stops dragging the slider, seek to the selected position
                    //_audioPlayerController.seek(Duration(milliseconds: value.toInt()));
                  },
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.shuffle),
                iconSize: 30,
                color: Color.fromARGB(110, 255, 255, 255),
              ),
              SizedBox(
                width: 30,
              ),
              IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.first_page_rounded),
                  iconSize: 40,
                  color: Color.fromARGB(194, 255, 255, 255)),
              IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.play_arrow_rounded),
                  iconSize: 70,
                  color: Colors.white),
              IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.last_page_rounded),
                  iconSize: 40,
                  color: Color.fromARGB(194, 255, 255, 255)),
              SizedBox(
                width: 30,
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.repeat_rounded),
                iconSize: 30,
                color: Color.fromARGB(110, 255, 255, 255),
              )
            ],
          )
        ],
      ),
    );
  }
}
