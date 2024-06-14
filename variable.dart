// ignore: unused_import
import 'dart:io';

void main() {
  //chaine de caractere
  String name = 'Maguette';
  print("votre nom est $name");

  //entier
  int age = 22;
  print(age);

  //double

  double pi = 3.14;
  print(pi);

  // booléen

  bool isFlutterAwesome = true;

  //variable final
  final String nom_complet = 'Maguette Dia';
  print(nom_complet);
  //constante
  const int vitesseLumiere = 299792458;
  print(vitesseLumiere);

  //Liste et map

  //liste
  var nombres = [1, 2, 3, 4, 5];
  nombres.add(6);
  print(nombres);

  //Map
  var etudiant = {'nom': 'Maguette', 'age': 22, 'classe': 'apd'};
  etudiant['note'] = 85;
  print(etudiant);
}
