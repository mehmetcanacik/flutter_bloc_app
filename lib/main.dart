import 'package:bloc_app/views/users_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const FlutterApp());
}

class FlutterApp extends StatelessWidget {
  const FlutterApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      darkTheme: ThemeData.dark(),
      theme: ThemeData(
        textTheme: const TextTheme(
            headline5: TextStyle(
                fontSize: 16,
                color: Colors.black54,
                fontWeight: FontWeight.w500),
            caption: TextStyle(
                fontSize: 14, fontWeight: FontWeight.w500, letterSpacing: 1)),
        primarySwatch: Colors.purple,
        colorScheme: Theme.of(context)
            .colorScheme
            .copyWith(primary: Colors.purple, secondary: Colors.blueAccent),
      ),
      home: const UsersPage(),
    );
  }
}
