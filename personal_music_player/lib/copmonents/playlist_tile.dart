import 'package:flutter/material.dart';

class playlistTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
          margin: EdgeInsets.only(left: 10, top: 10, right: 10, bottom: 10),
          height: 200,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            image: DecorationImage(
              image: AssetImage('images/logo.png'),
              fit: BoxFit.fill,
            ), // Change color as needed
          ),
          child: Stack(children: [
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  colors: [
                    Colors.black,
                    Colors.transparent,
                    Colors.transparent,
                    Colors.black
                  ],
                  stops: [0.0, 0.5, 0.5, 1.0], // Adjust the stops as needed
                ),
              ),
              // Other content in your container
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Playlist Name",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                  ),
                ),
                Text(
                  "Creatad User",
                  style: TextStyle(color: Colors.white, fontSize: 15),
                ),
                SizedBox(
                  height: 70,
                  child: Row(
                    //crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      SizedBox(
                        width: 300,
                      ),
                      Column(
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.play_circle_filled_rounded,
                              color: Colors.white,
                            ),
                            iconSize: 35,
                          ),
                          Text(
                            "30 min",
                            style: TextStyle(color: Colors.white, fontSize: 13),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                Text(
                  "Artists",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
                Text(
                  "Pradeep Kumar, Sid Sriram, Anurag Khulkarni, Dhee, Sathyaprakash D, Chinmayi",
                  style: TextStyle(color: Colors.white, fontSize: 12),
                ),
              ],
            ),
          ])),
    );
  }
}
