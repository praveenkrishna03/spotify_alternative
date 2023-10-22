import 'package:hive/hive.dart';

part 'PlaylistModel.g.dart';

@HiveType(typeId: 0)
class PlaylistModel extends HiveObject {
  @HiveField(0)
  String playlistName; // Name of the playlist

  @HiveField(1)
  List<String> songs; // List of songs

  @HiveField(2)
  String
      image; // Path to playlist image (you can store the image path as a String)

  PlaylistModel(
      {required this.playlistName, required this.songs, required this.image});
}
