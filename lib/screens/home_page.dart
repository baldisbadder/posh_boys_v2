import 'package:flutter/material.dart';
import '../widgets/event_list_widget.dart';
import '../widgets/title_section_widget.dart';
import '../screens/all_events_page.dart';
import '../widgets/title_text_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
/*      appBar: AppBar(
        title: const Text('Home Page'),
      ), */
      body: Column(
        children: [
          // First widget with a fixed height (e.g., an image or banner)
          SizedBox(
            height: 90, // Set a fixed height for this widget
            width: double.infinity, // Make it take full width
            child: Container(
              color: Colors.blueAccent,
              child: const TitleSection(
                title: 'The Posh Boys App',
                intro: 'Welcome to our app where you will find opening times, '
                'events, offers, menus and much more!'
              ),
            ),
          ),

          // Full-width box for the EventListWidget with "Upcoming Events" title
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(8.0),
            decoration: BoxDecoration(
              color: Colors.grey.shade200,
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Center(
                  child: Padding(
                    padding: EdgeInsets.only(bottom: 8.0),
                    child: TitleTextWidget(
                      title: 'Upcoming Events',
                    ),
                  ),
                ),
                const EventListWidget(),
                Center(
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const AllEventsPage()),
                      );
                    },
                    child: const Text('SEE ALL EVENTS')),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}