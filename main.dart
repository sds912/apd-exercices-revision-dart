import 'dart:async';

// Environnement Dart
// 1. Configuration de l'environnement de développement
// Installez Dart sur votre machine et configurez l'éditeur Visual Studio Code pour le développement en Dart.

void main() {
  // Variables en Dart
  // 2. Déclaration de Variables
  String nom = 'Diagne';
  int age = 25;

  // 3. Types de Variables
  double pi = 3.14;
  bool isFlutterAwesome = true;

  // 4. Variables Finales et Constantes
  final String nomComplet = 'Ndiathe Diagne';
  const int vitesseLumiere = 299792458; // m/s

  // Lists et Maps
  // 5. Utilisation des Listes
  List<int> nombres = [1, 2, 3, 4, 5];
  nombres.add(6);

  // 6. Utilisation des Maps
  Map<String, dynamic> etudiant = {
    'nom': 'Diagne',
    'age': 25,
    'classe': 'APD'
  };
  etudiant['note'] = 19;

  // Fonctions
  // 7. Définition et Appel de Fonctions
  void bonjour(String nom) {
    print('Bonjour, $nom!');
  }
  bonjour(nom);

  // 8. Fonctions avec Paramètres et Valeurs de Retour
  int addition(int a, int b) {
    return a + b;
  }
  int resultatAddition = addition(5, 7);
  print('Résultat de l\'addition : $resultatAddition');

  // Structures de Contrôle
  // 9. Conditions (if, else)
  int nombre = 3;
  if (nombre > 0) {
    print('Le nombre est positif.');
  } else if (nombre < 0) {
    print('Le nombre est négatif.');
  } else {
    print('Le nombre est zéro.');
  }

  // 10. Boucles (for, while)
  for (int i = 1; i <= 10; i++) {
    print(i);
  }
  int j = 10;
  while (j >= 1) {
    print(j);
    j--;
  }

  // 11. Gestion des Exceptions
  double division(int a, int b) {
    if (b == 0) {
      throw Exception('Le dénominateur ne peut pas être zéro.');
    }
    return a / b;
  }
  try {
    print(division(10, 0));
  } catch (e) {
    print(e);
  }

  // Utilisation des classes définies plus bas
  Personne personne1 = Personne('Diagne', 25);

  Etudiant etudiant1 = Etudiant('Diouf', 25, 'APD');

  PersonneAvecGetSet personneAvecGetSet = PersonneAvecGetSet('Diagne', 25);
  personneAvecGetSet.nom = '';
  print(personneAvecGetSet.nom);

  // Imports et Exports
  // 15. Organisation du Code en Modules
  // Créez un fichier calculs.dart contenant une fonction carre qui calcule le carré d'un nombre.
  // Importez ce fichier dans un autre fichier main.dart et utilisez la fonction carre.

  // L’asynchrone
  // 16. Concepts d’asynchrone en Dart
  Future<String> fetchData() async {
    await Future.delayed(Duration(seconds: 2));
    return 'Données reçues';
  }
  fetchData().then((resultat) => print(resultat));

  // 17. Utilisation de async et await
  Future<void> mainAsync() async {
    String resultat = await fetchData();
    print(resultat);
  }
  mainAsync();

  // 18. Gestion des Futures et des Streams
  Stream<int> streamDeDonnees = Stream.periodic(Duration(seconds: 1), (computationCount) => computationCount);
  streamDeDonnees.take(5).listen((data) {
    print(data);
  });

  // Exercices Pratiques Supplémentaires
  // 19. Calcul de Factorielle
  int factorielle(int n) {
    if (n <= 1) return 1;
    return n * factorielle(n - 1);
  }
  print('Factorielle de 5 : ${factorielle(5)}');

  // 20. Filtrage de Liste
  List<int> filtrerPairs(List<int> nombres) {
    return nombres.where((nombre) => nombre % 2 == 0).toList();
  }
  print('Nombres pairs : ${filtrerPairs([1, 2, 3, 4, 5, 6])}');

  // 21. Concaténation de Chaînes
  String concatener(String chaine1, String chaine2) {
    return chaine1 + chaine2;
  }
  print('Concaténation : ${concatener('Bonjour, ', 'classe!')}');

  // 22. Recherche dans une Liste
  bool rechercher(List<String> liste, String recherche) {
    return liste.contains(recherche);
  }
  print('Recherche : ${rechercher(['dart', 'flutter', 'react'], 'flutter')}');

  // 23. Manipulation de Date et Heure
  DateTime maintenant = DateTime.now();
  DateTime plusTard = maintenant.add(Duration(days: 7));
  print('Date et heure actuelles : $maintenant');
  print('Date et heure dans 7 jours : $plusTard');

  // 24. Calcul de la Moyenne
  double moyenne(List<int> nombres) {
    int somme = nombres.reduce((a, b) => a + b);
    return somme / nombres.length;
  }
  print('Moyenne : ${moyenne([1, 2, 3, 4, 5])}');

  // 25. Filtrage de Map
  Map<String, int> filtrerEtudiants(Map<String, int> etudiants) {
    return etudiants..removeWhere((nom, note) => note <= 70);
  }
  print('Etudiants filtrés : ${filtrerEtudiants({'Alice': 85, 'Bob': 65, 'Charlie': 95})}');

  // 26. Trie de Liste
  List<int> trier(List<int> nombres) {
    nombres.sort();
    return nombres;
  }
  print('Liste triée : ${trier([5, 3, 8, 1, 2])}');
}

// Classes
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
class PersonneAvecGetSet {
  String _nom;
  int _age;

  PersonneAvecGetSet(this._nom, this._age);

  String get nom => _nom;
  set nom(String valeur) => _nom = valeur;

  int get age => _age;
  set age(int valeur) => _age = valeur;
}
