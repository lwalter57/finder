import 'package:flutter/material.dart';
import 'package:museum/tools/fake_candidat.dart';

void main() {
  runApp(const FinderApp());
}

class FinderApp extends StatelessWidget {
  const FinderApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'finder',
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home: const Artwork(),
    );
  }
}

class Artwork extends StatefulWidget {
  const Artwork({super.key});

  @override
  State<Artwork> createState() => _Artwork();
}

class _Artwork extends State<Artwork> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Museum DeVinci"),
      ),
      body: Center(
        child: Container(),
      ),
    );
  }
}
