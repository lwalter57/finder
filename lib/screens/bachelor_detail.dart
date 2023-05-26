import 'package:flutter/material.dart';
import 'package:museum/models/candidat.dart';

class BachelorDetail extends StatefulWidget {
  final Candidat candidat;

  const BachelorDetail({super.key, required this.candidat});

  @override
  State<BachelorDetail> createState() => _BachelorDetail();
}

class _BachelorDetail extends State<BachelorDetail> {
  late Candidat _candidat;
  bool _isFavorite = false;

  Widget displayIconHeart() {
    if (!_isFavorite) {
      return const Opacity(
        opacity: 0.20,
        child: Icon(
          Icons.favorite,
          size: 200,
          color: Colors.white,
        ),
      );
    } else {
      return const Icon(Icons.favorite,
          size: 200, color: Color.fromARGB(255, 180, 83, 83));
    }
  }

  void toggleFavorite() {
    setState(() {
      _isFavorite = !_isFavorite;
    });
    if (_isFavorite) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          duration: Duration(seconds: 2),
          backgroundColor: Color.fromARGB(255, 200, 38, 38),
          content: Text(
            'Its a crush !',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 20,
              color: Color.fromARGB(255, 247, 241, 241),
            ),
          ),
        ),
      );
    }
  }

  @override
  void initState() {
    _candidat = widget.candidat;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'finder',
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home: UnconstrainedBox(
        child: Card(
          elevation: 3,
          child: Container(
            padding: const EdgeInsets.all(15),
            child: Column(
              children: [
                Column(
                  children: [
                    Stack(alignment: Alignment.center, children: [
                      Image.asset(
                        _candidat.avatar,
                        height: 300,
                      ),
                      displayIconHeart(),
                    ]),
                    IconButton(
                      icon: const Icon(
                        Icons.favorite,
                        color: Colors.red,
                      ),
                      onPressed: () => toggleFavorite(),
                    ),
                  ],
                ),
                Text("${_candidat.firstname} ${_candidat.lastname}"),
                Text("Job : ${_candidat.job!}"),
                Text("Description : ${_candidat.description!}"),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
