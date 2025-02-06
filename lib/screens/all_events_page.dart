import 'package:flutter/material.dart';
// import 'package:posh_boys_v2/widgets/event_list_widget.dart';
import 'package:intl/intl.dart';
import '../widgets/future_events_list.dart';
// import '../models/event.dart';

class AllEventsPage extends StatelessWidget {
  const AllEventsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('All Events at the Posh Boys')),
      ),
      body: FutureEventsList(
        builder: (context, events) {
          return ListView.builder(
            itemCount: events.length,
            itemBuilder: (context, index) {
              final event = events[index];
              final formattedDate = DateFormat('EEEE dd/MM/yyyy').format(event.startDate);
              return ListTile(
                title: Center(child: Text(event.name)),
                subtitle: Center(child: Text(formattedDate)),
              );
            },
          );
        },
      ),
    );
  }
}