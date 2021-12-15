import 'package:flutter/material.dart';
import 'package:notes_localdb/mynotes.dart';
import 'package:notes_localdb/mynotes.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "TODO",
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light().copyWith(
        colorScheme: ColorScheme.fromSwatch().copyWith(secondary: Colors.deepOrange),
      ),
      home: MyNotes(),
    );
  }
}
