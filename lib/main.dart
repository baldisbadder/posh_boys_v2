import 'package:flutter/material.dart';
import '../screens/home_page.dart';

/* original code before overriding http ssl certs
void main() =>  runApp(const MyApp());
*/ // - end override ssl certs

import 'dart:io';

class MyHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext? context) {
    return super.createHttpClient(context)
      // This callback accepts any certificate.
      ..badCertificateCallback = (X509Certificate cert, String host, int port) => true;
  }
}

void main() {
  // Set the global HTTP overrides before running your app.
  HttpOverrides.global = MyHttpOverrides();
  runApp(MyApp());
}
// END OF HTTP Temp code section to override HTTP errors

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

