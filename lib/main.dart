import 'package:flutter/material.dart';
import '../screens/home_page.dart';

void main() =>  runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    
    const String appTitle = 'Posh Boys App';

    return MaterialApp(
      title: 'Posh Boys App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text(appTitle),
        ),
        body: const HomePage(),
      )
    );
  }
}

