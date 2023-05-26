import 'package:flutter/material.dart';
import 'package:museum/enums/gender.dart';
import 'package:museum/models/candidat.dart';
import 'package:museum/screens/bachelor_detail.dart';
import 'package:museum/tools/fake_candidat.dart';
import 'dart:math';

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
  void _display() {
    setState(() {});
  }

  final List<Candidat> _candidats = generateCandidats();

  String randomSearching() {
    Random random = Random();
    int randomNumber = random.nextInt(3);
    String result = "Searching for ";

    switch (randomNumber) {
      case 0:
        result += Gender.man.name;
        break;
      case 1:
        result += Gender.women.name;
        break;
      case 2:
        result += Gender.idk.name;
    }

    return result;
  }

  Widget listOfFinders() {
    return ListView.builder(
        itemCount: _candidats.length,
        itemBuilder: (BuildContext context, int index) {
          Candidat candidat = _candidats[index];
          return Card(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: GestureDetector(
                child: Column(
                  children: [
                    Image.asset(
                      candidat.avatar,
                      height: 200,
                    ),
                    Text("${candidat.firstname} ${candidat.lastname}"),
                    Text(randomSearching())
                  ],
                ),
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (_) => BachelorDetail(candidat: candidat)));
                },
              ),
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Finder"),
      ),
      body: Container(
        color: Colors.red,
        child: Expanded(
          child: listOfFinders(),
        ),
      ),
    );
  }
}
