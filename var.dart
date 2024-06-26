// Importations en haut du fichier
import 'calculs.dart';  // Assurez-vous que ce fichier est bien présent
import 'dart:async';  // Pour les fonctionnalités asynchrones

// Exercice 11: Gestion des Exceptions

double division(double a, double b) {
  if (b == 0) {
    throw Exception("Division par zéro !");
  }
  return a / b;
}

void exo11() {
  try {
    print(division(10, 2)); // Devrait afficher 5.0
  } catch (e) {
    print(e); // Affiche l'exception en cas d'erreur
  }
}

// Exercice 12: Déclaration de Classes et Objets

class Person {
  String nom;
  int age;

  Person(this.nom, this.age);
}

void exo12() {
  var personne1 = Person("ndoye", 30);
  print(personne1.nom); // Affiche "ndoye"
}

// Exercice 13: Héritage et Polymorphisme

class Etudiant extends Person {
  String classe;

  Etudiant(String nom, int age, this.classe) : super(nom, age);
}

void exo13() {
  var etudiant1 = Etudiant("ibou ndoye", 25, "Apd");
  print("${etudiant1.nom}, ${etudiant1.age}, ${etudiant1.classe}");
}

// Exercice 14: Getters et Setters

class PersonDetails {
  String _nom;
  int _age;

  String get nom => _nom;
  set nom(String value) => _nom = value;

  int get age => _age;
  set age(int value) => _age = value;

  PersonDetails(this._nom, this._age);
}

void exo14() {
  var personne1 = PersonDetails("ndoye", 30);
  print(personne1.nom); // Affiche "ndoye"
  personne1.nom = "ibou ndoye";
  print(personne1.nom); // Affiche "ibou ndoye"
}

// Exercice 15: Organisation du Code en Modules

void exo15() {
  print(carre(5)); // Affiche: 25
}

// Exercice 16: Concepts d’asynchrone en Dart

Future<String> fetchData() async {
  await Future.delayed(Duration(seconds: 2));
  return "Données reçues";
}

Future<void> exo16() async {
  var result = await fetchData();
  print(result); // Affiche "Données reçues" après 2 secondes
}

// Exercice 17: Utilisation de async et await

Future<void> exo17() async {
  var result = await fetchData();
  print(result); // Affiche "Données reçues" après 2 secondes
}

// Exercice 18: Gestion des Futures et des Streams

void exo18() {
  Stream.periodic(Duration(seconds: 1), (x) => x).listen((x) {
    print(x); // Affiche un compteur incrémental chaque seconde
  });
}

// Appel des fonctions
void main() async {
  exo11();
  exo12();
  exo13();
  exo14();
  exo15();
  await exo16(); // Utilisation de await car c'est une fonction asynchrone
  await exo17(); // Utilisation de await car c'est une fonction asynchrone
  exo18();
}