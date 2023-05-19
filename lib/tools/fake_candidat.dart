import 'package:faker/faker.dart';
import 'package:museum/models/candidat.dart';
import 'dart:math';
import 'package:museum/enums/gender.dart';

List<Candidat> generateCandidats() {
  var faker = Faker();
  Random random = Random();
  int randomNumber = random.nextInt(7);
  int randomPersonn = random.nextInt(15);

  List<String> maleFirstname = [
    "Thomas",
    "Jeremy",
    "Corentin",
    "Jordan",
    "Galaad",
    "Cédric",
    "Benoit",
    "Nicolas",
  ];
  List<String> femaleFirstname = [
    "Sophie",
    "Anna",
    "Lauriane",
    "Léa",
    "Fatima",
    "Carla",
    "Deb",
    "Marie",
  ];
  List<Candidat> candidats = [];

  for (int i = 0; i < 15; i++) {
    candidats.add(Candidat(
        firstname: maleFirstname[randomNumber],
        lastname: faker.person.lastName(),
        gender: Gender.man,
        avatar: "man-$randomPersonn.png"));
  }

  for (int i = 0; i < 15; i++) {
    candidats.add(Candidat(
        firstname: femaleFirstname[randomNumber],
        lastname: faker.person.lastName(),
        gender: Gender.women,
        avatar: "assets/images/woman-$randomPersonn.png"));
  }
  return candidats;
}
