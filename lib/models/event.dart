// import 'package:intl/intl.dart';
class Event {
  final String name;
  final String description;
  final String imageUrl;
  final DateTime startDate;

  // Regular constructor

 Event({
    required this.name,
    required this.description,
    required this.imageUrl,
    required this.startDate,
  });

  // Factory method to create an instance from JSON
  factory Event.fromJson(Map<String, dynamic> json) {
    print(json);
    return Event(
      name: json['eventname'].toString(),
      description: json['eventdescription'] as String,
      imageUrl: json['imageurl'] as String,
      startDate: DateTime.fromMillisecondsSinceEpoch(int.parse(json['startdate'])),
      //startDate: DateTime(2025, 2, 14),
    );
  }
}