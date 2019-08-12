import 'package:floor/floor.dart';

@entity 
class Reminder {
  @primaryKey
  final int id;
  final String title;
  final String description;
  final String time;
Reminder(this.description, this.id, this.time, this.title);

  
}