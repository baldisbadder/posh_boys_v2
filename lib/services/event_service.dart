// lib/services/event_service.dart

import 'package:posh_boys_v2/models/event.dart';

// Temporary function to simulate fetching events
Future<List<Event>> fetchEvents() async {
  await Future.delayed(const Duration(seconds: 1));

  List<Event> mockEvents = [
    Event(
      name: 'Live Band Night',
      description: 'Join us for an amazing night of live music!',
      imageUrl: 'https://example.com/image1.png',
      startDateTime: DateTime.parse('2024-11-10T20:00:00Z'),
    ),
    Event(
      name: 'Craft Beer Tasting',
      description: 'Sample our exclusive craft beers.',
      imageUrl: 'https://example.com/image2.png',
      startDateTime: DateTime.parse('2024-11-12T18:00:00Z'),
    ),
    Event(
      name: 'Quiz Night',
      description: 'Test your knowledge and win prizes!',
      imageUrl: 'https://example.com/image3.png',
      startDateTime: DateTime.parse('2024-11-14T19:30:00Z'),
    ),
  ];

  return mockEvents;
}