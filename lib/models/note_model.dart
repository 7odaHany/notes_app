import 'package:hive/hive.dart'; // info: this for hive

part 'note_model.g.dart';  //info: this for code generation
@HiveType(typeId: 0) //info: this id for hive
class NoteModel extends HiveObject {
  @HiveField(0) // info: thid id cannot use agian in the same class
  final String title;
  @HiveField(1)
  final String subtitle;
  @HiveField(2)
  final String date;
  @HiveField(3)
  final int color;

  NoteModel(
      {required this.title,
      required this.subtitle,
      required this.date,
      required this.color});
}
