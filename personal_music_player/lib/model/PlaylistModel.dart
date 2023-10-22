import 'package:hive/hive.dart';

part 'PlaylistModel.g.dart';

@HiveType(typeId: 0)
class PlaylistModel extends HiveObject {
  @HiveField(0)
  late String title; // Song title

  @HiveField(1)
  late String movieName; // Movie name

  @HiveField(2)
  late String path; // Song path
}
