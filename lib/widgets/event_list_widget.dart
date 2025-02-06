import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../widgets/future_events_list.dart';
import '../models/event.dart';

class EventListWidget extends StatelessWidget {
  const EventListWidget({super.key});

  List<Event> filterEventsForNext7Days(List<Event> events) {
    final now = DateTime.now();
    final sevenDaysFromNow = now.add(const Duration(days: 7));
    /* return events.where((event) {
      return event.startDateTime.isAfter(now) &&
             event.startDateTime.isBefore(sevenDaysFromNow);
    }).toList(); */

    // Temp line until we get date and time ***
    return events.toList();
  }

  @override
  Widget build(BuildContext context) {
    return FutureEventsList(
      builder: (context, events) {
        final filteredEvents = filterEventsForNext7Days(events);
        if (filteredEvents.isEmpty) {
          return const Center(child: Text('No events in the next 7 days.'));
        }
        
        return ListView.builder(
          itemCount: filteredEvents.length,
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) {
            final event = filteredEvents[index];
            // final formattedDate = DateFormat('EEEE dd/MM/yyyy h:mm a').format(event.startDateTime);
            return ListTile(
              title: Center(child: Text(event.name)),
              subtitle: Center(child: Text(event.description)),
              // subtitle: Center(child: Text(formattedDate)),
            );
          },
        );
      },
    );
  }
}
