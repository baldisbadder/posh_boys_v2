import 'package:flutter/material.dart';
import '../services/event_service.dart';
import '../models/event.dart';

class FutureEventsList extends StatelessWidget {
  final Widget Function(BuildContext, List<Event>) builder;

  const FutureEventsList({super.key, required this.builder});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Event>>(
      future: fetchEvents(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(child: CircularProgressIndicator());
        } else if (snapshot.hasError) {
          return Center(child: Text('Error: ${snapshot.error}'));
        } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
          return const Center(child: Text('No events available.'));
        } else {
          return builder(context, snapshot.data!);
        }
      },
    );
  }
}
