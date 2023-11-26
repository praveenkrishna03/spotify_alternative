import 'package:flutter/material.dart';

class myPlaylistTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {},
        child: Card(
          color: Color.fromARGB(197, 255, 255, 255),
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
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "My Playlist",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 18),
                          ),
                        ],
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.downloading_rounded,
                        color: Color.fromARGB(255, 79, 114, 81),
                      ),
                      iconSize: 35,
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.play_arrow_rounded,
                          color: const Color.fromARGB(255, 0, 0, 0),
                        ),
                        iconSize: 35)
                  ],
                )),
          ),
        ));
  }
}
