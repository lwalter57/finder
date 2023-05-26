import 'package:faker/faker.dart';
import 'package:museum/models/candidat.dart';
import 'dart:math';
import 'package:museum/enums/gender.dart';

List<Candidat> generateCandidats() {
  var faker = Faker();
  Random random = Random();

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
    int randomNumber = random.nextInt(8);
    int randomPersonn = random.nextInt(14);
    candidats.add(
      Candidat(
          firstname: maleFirstname[randomNumber],
          lastname: faker.person.lastName(),
          gender: Gender.man,
          avatar: "assets/images/man-$randomPersonn.png",
          job: faker.job.title(),
          description: "Coucou"),
    );
  }

  for (int i = 0; i < 15; i++) {
    int randomNumber = random.nextInt(7);
    int randomPersonn = random.nextInt(15);
    candidats.add(Candidat(
        firstname: femaleFirstname[randomNumber],
        lastname: faker.person.lastName(),
        gender: Gender.women,
        avatar: "assets/images/woman-$randomPersonn.png"));
  }
  return candidats;
}
