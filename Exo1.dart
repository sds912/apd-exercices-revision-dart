import 'dart:io';

void main() {
  print("Comment tu t'appel");
  String? nom = stdin.readLineSync();
  print("Donner votre age");
  int age = 20;

  print("je m'appel $nom et j'ai $age ans");
  double pi = 3.14;
  print(pi);
  bool isFlutterAwasome = true;
  print(isFlutterAwasome);
  final nomcomplet;
  nomcomplet = 'Mohamet Diagne';
  print("Votre Nom complet est :$nomcomplet");
  //declaration d'une constant
  const vitesseLumiere = 299792458;
  print(vitesseLumiere);
  // liste et map
  var nombres = [1, 2, 3, 4, 5];
  print(nombres);
  //ajouter la valeur 6
  nombres.add(6);
  print(nombres);

  //les maps
  var etudiant = {'nom': 'Mohameth', 'age': 23, 'classe': 'APD'};
  print(etudiant);
  print(etudiant['nom']);
  //Ajouter de note
  etudiant['note'] = 85;
  print(etudiant);
  //fonction
  bonjour() {}
  bonjour();
}
