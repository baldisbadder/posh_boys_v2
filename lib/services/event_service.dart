// lib/services/event_service.dart

import 'package:posh_boys_v2/models/event.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

Future<List<Event>> fetchEvents() async {
  // Define your URL
  final url = Uri.parse("https://poshboysbar.co.uk/wp-json/mo/v1/app-events-all");

  // Make the GET request
  final response = await http.get(url);

  // Check if the request was successful
  if (response.statusCode == 200) {
    // Decode the JSON string into a list
    List<dynamic> jsonList = json.decode(response.body);

    // Map the JSON list to a list of Event objects
    return jsonList.map((jsonItem) => Event.fromJson(jsonItem)).toList();
  } else {
    throw Exception("Failed to load events");
  }

// Temporary function to simulate fetching events
// Removed as using http request to website
/* 
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
 
  return mockEvents; */

}