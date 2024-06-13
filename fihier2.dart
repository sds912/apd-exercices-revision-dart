// L’asynchrone
import 'dart:async';

// 12. Déclaration de Classes et Objets
class Personne {
  String nom;
  int age;

  Personne(this.nom, this.age);
}

// 13. Héritage et Polymorphisme
class Etudiant extends Personne {
  String classe;

  Etudiant(String nom, int age, this.classe) : super(nom, age);
}

// 14. Getters et Setters
class PersonneWithGettersSetters {
  late String _nom;
  late int _age;

  String get nom => _nom;
  set nom(String value) => _nom = value;

  int get age => _age;
  set age(int value) => _age = value;
}

// 15. Organisation du Code en Modules
int carre(int nombre) {
  return nombre * nombre;
}

// 16. Concepts d’asynchrone en Dart
Future<String> fetchData() async {
  await Future.delayed(Duration(seconds: 2));
  return "Données reçues";
}

void main() async {
  // Test de chaque fonctionnalité
  // 12. Déclaration de Classes et Objets
  var personne1 = Personne("John", 30);
  print("Nom: ${personne1.nom}, Age: ${personne1.age}");

  // 13. Héritage et Polymorphisme
  var etudiant1 = Etudiant("Jane", 22, "Informatique");
  print("Nom: ${etudiant1.nom}, Age: ${etudiant1.age}, Classe: ${etudiant1.classe}");

  // 14. Getters et Setters
  var personne2 = PersonneWithGettersSetters();
  personne2.nom = "John Doe";
  personne2.age = 26;
  print("Nom: ${personne2.nom}, Age: ${personne2.age}");

  // 15. Organisation du Code en Modules
  print(carre(5));


}
