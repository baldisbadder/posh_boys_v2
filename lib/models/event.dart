class Event {
  final String name;
  final String description;
  final String imageUrl;
  final DateTime startDateTime;

  // Regular constructor

 Event({
    required this.name,
    required this.description,
    required this.imageUrl,
    required this.startDateTime,
  });

  // Factory method to create an instance from JSON
  factory Event.fromJson(Map<String, dynamic> json) {
    return Event(
      name: json['name'] as String,
      description: json['description'] as String,
      imageUrl: json['imageUrl'] as String,
      startDateTime: DateTime.parse(json['startDateTime'] as String),
    );
  }
}