import 'package:museum/enums/gender.dart';

class Candidat {
  String firstname;
  String lastname;
  Enum gender;
  String avatar;
  List<Gender>? searchFor;
  String? job;
  String? description;

  Candidat(
      {required this.firstname,
      required this.lastname,
      required this.gender,
      required this.avatar,
      this.searchFor,
      this.job,
      this.description});
}
