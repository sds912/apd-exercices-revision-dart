// ignore: unused_import
import 'dart:io';
import 'calcule.dart';
import 'dart:async';
import 'dart:math';

//2.Declaration de Variables

void main() {
  String nom = "Seck"; //
  int age = 21;
  print(age);
  print(nom);

//3.Types de variables
  var pi = 3.14;
  print(pi);
  bool isFlutterAwesome = true;
  print(true);

//4.Variables Finales et Constantes
  final nomComplet = "Marieme Seck";
  print(nomComplet);
  const vitesseLumiere = 299792458;
  print(vitesseLumiere);

//Lists et Maps
//5.Utilisation des Listes
  var nombres = [1, 2, 3, 4, 5];
  print(nombres);
  nombres.add(6);
  print(nombres);

//6.Utilisation des Maps
  var etudiant = {"nom": 'seck', "age": 20, "classe": 'APD'};
  print(etudiant);
  etudiant['note'] = 85;
  print(etudiant);

//Fonctions
//7.Definition et Appel de Fonctions
  void bonjour(String nom) {
    print('Bonjour $nom !');
  }

  bonjour('Marieme');

//8.Fonctions avec Parametres et Valeurs de Retour
  int addition(int a, int b) {
    return a + b;
  }

  var resultat = addition(5, 7);
  print(resultat);

//Structures de Controle
//9.Conditions(if,else)
  var a = -2;
  if (a > 0) {
    print('positif');
  } else if (a < 0) {
    print('negatif');
  } else {
    print('nul');
  }

//10.Boucles(for,while)
  for (var i = 1; i < 11; i++) {
    print(i);
  }

//11.Gestion de classes et objets
  double division(int a, int b) {
    return a / b;
  }

  var res = division(10, 2);
  print(res);

  //Classes
  //12.	Déclaration de Classes et Objets
  //Creation objet
  Personne personne1 = Personne(nom: 'Moustapha', age: 18);
  //Affichage
  print('Nom: ${personne1.nom}, Age: ${personne1.age}');

  // 13.Héritage et Polymorphisme
  var etudiant2 = Etudiant(nom: '', age: 20, classe: '');
  Etudiant etudiant1 = etudiant2;
  // Affichage des valeurs des attributs de l'objet etudiant1
  print(
      'Nom: ${etudiant1.nom}, Age: ${etudiant1.age}, Classe: ${etudiant1.classe}');

  // 14.Getters et Setters

  // Imports et Exports
  // 15.	Organisation du Code en Modules

  print("Le carre de 3 est égale à ${carre(2)}");

  //16.Concepts d'asynchrome en dart
  Future<String> fetchData() {
    return Future.delayed(Duration(seconds: 2), () => "Données recues");
  }

  //Utilisation de async et await

  // 18.Gestion des futures et des streams
  listeT();

  // 19.Calcule defactorielle
  print(factorielle(4));

  //20.Filtrage de liste
  print("Filtrage de Liste");
  print(filtrerPairs([1, 2, 3, 4, 5, 6])); // [2, 4, 6]

  //21
  print("Concaténation de Chaînes");
  print(concatener('Bonjour, ', 'la famille'));

  //22
  print("Recherche dans une Liste");
  print(rechercher(['thon', 'orange', 'oiseau'], 'orange'));

  //23
  print("Manipulation de Date et Heure");
  DateTime now = DateTime.now();
  print('Date et heure actuelles: $now');

  //24
  print("Calcul de la Moyenne");
  print(moyenne([1, 2, 3, 4, 5]));

  //25
  print("filtrage de map");

  //26
  print("Trie de Liste");
  print(trier([5, 2, 9, 1, 5, 6]));

  //27
  print(
      "Vérification de Palindrome"); //Il va verifier si la chaine est palindrome sinon il affiche false
  print(estPalindrome('matam'));

  //28
  print("Génération de Nombres Aléatoires");
  Random random = Random();
  for (int i = 0; i < 10; i++) {
    print(random.nextInt(100) + 1);
  }

  //29
  print("Conversion de Température");
  print(convertirEnFahrenheit(90));

  //30
  print("classe complexe");

  //31
  print("statistique de liste");
  List<double> listeNombres = [5, 2, 7, 11, 3];

  try {
    Map<String, double> resultats = calculerStatistiques(listeNombres);
    print('Statistiques: $resultats');
  } catch (e) {
    print('Erreur: $e');
  }

  //32
  print("Suppression des Doublons");
  print(supprimerDoublons([1, 2, 2, 3, 4, 4, 5]));

  //33
  print("conversion de liste en Map");

  // Exemple d'utilisation
  List<String> cles = ['nom', 'age', 'ville'];
  List<dynamic> valeurs = ['Alice', 30, 'Paris'];

  try {
    // Appel de la fonction pour convertir les listes en Map
    Map<String, dynamic> mapResultat = convertirEnMap(cles, valeurs);
    print('Map résultante: $mapResultat');
  } catch (e) {
    print('Erreur: $e');
  }

  //34
  print("Classe pour Gestion de Banque");
  CompteBancaire compte = CompteBancaire(500);
  print("Solde debut = 500");
  compte.deposer(50);
  compte.retirer(30);
  print("Dépot = 50");
  print("Retiré = 30");
  print("Nouveau solde = ${compte.getSolde()}");

  //35
  print("filtrage de chaines par longueur");
  List<String> listeExemple = ["chat", "chien", "oiseau", "éléphant", "souris"];
  int longueurMinimale = 5;

  List<String> resultatFiltre = filtrerLongueur(listeExemple, longueurMinimale);
  print(resultatFiltre); // Output attendu: ['chien', 'oiseau', 'éléphant']

  //36
  print("manipulation de set");
  // Création d'un Set de nombres
  Set<int> numeros = Set();

  // Ajout d'éléments au Set
  numeros.addAll([1, 2, 3, 4, 5]);

  // Retrait d'un élément du Set
  numeros.remove(3);

  // Affichage du contenu final du Set
  print("Contenu final du Set : $numeros");

  //37
  print("inversion de chaine");
  String inverser(String chaine) {
    String chaineInverse = '';

    // Parcours de la chaîne de caractères de la fin vers le début
    for (int i = chaine.length - 1; i >= 0; i--) {
      chaineInverse += chaine[i];
    }

    return chaineInverse;
  }

  //38
  print("remplacement de caracteres");
  String chaineOriginale = "Hello, World!";
  String caractereARemplacer = "o";
  String caractereDeRemplacement = "x";

  String nouvelleChaine =
      remplacer(chaineOriginale, caractereARemplacer, caractereDeRemplacement);

  print("Chaîne originale : $chaineOriginale");
  print("Nouvelle chaîne : $nouvelleChaine");

  //39.Classe pour Gestion de livres
  print("classe pour gestion de livres");
  // Exemple d'utilisation de la classe Livre
  Livre monLivre = Livre("Harry Potter", "J.K. Rowling", 400);

  // Appel de la méthode pour afficher les informations du livre
  monLivre.afficherInformations();

  //40.Validation d'Email

  String email1 = "test@example.com";
  String email2 = "invalid.email";

  print(
      "Email 1 (${validerEmail(email1) ? 'valide' : 'non valide'}) : $email1");
  print(
      "Email 2 (${validerEmail(email2) ? 'valide' : 'non valide'}) : $email2");
}

//

Object? filtrerPairs(List<int> list) {
  return null;
}

// Exercice 21
String concatener(String str1, String str2) {
  return '$str1$str2';
}

// Exercice 22
bool rechercher(List<String> liste, String recherche) {
  return liste.contains(recherche);
}

// Exercice 24
double moyenne(List<int> nombres) {
  if (nombres.isEmpty) return 0;
  int somme = nombres.reduce((a, b) => a + b);
  return somme / nombres.length;
}

// Exercice 26
List<int> trier(List<int> nombres) {
  nombres.sort();
  return nombres;
}

// Exercice 27
bool estPalindrome(String chaine) {
  String reversed = chaine.split('').reversed.join('');
  return chaine == reversed;
}

// Exercice 29
double convertirEnFahrenheit(double celsius) {
  return celsius * 9 / 5 + 32;
}

// Exercice 32
List<T> supprimerDoublons<T>(List<T> liste) {
  return liste.toSet().toList();
}

// Exercice 34
class CompteBancaire {
  double solde;

  CompteBancaire(this.solde);

  void deposer(double montant) {
    solde += montant;
  }

  void retirer(double montant) {
    if (montant <= solde) {
      solde -= montant;
    } else {
      print('Fonds insuffisants');
    }
  }

  double getSolde() {
    return solde;
  }
}

// 16
Future<String> fetchData() {
  return Future.delayed(Duration(seconds: 2), () => "Données recues");
}

// 18
void listeT() {
  Stream<int> stream =
      Stream.periodic(Duration(seconds: 1), (count) => count).take(5);
  stream.listen((value) {
    print(value);
  });
}

// 19
int factorielle(int n) {
  if (n <= 1) return 1;
  return n * factorielle(n - 1);
}

class Personne {
  String nom;
  int age;

  Personne({required this.nom, required this.age});

  // Getters
  String get _nom => nom;
  set _nom(String value) => nom = value;
}

class Etudiant extends Personne {
  String classe;
  Etudiant({required String nom, required int age, required this.classe})
      : super(nom: '', age: 0);
}

Map<String, double> calculerStatistiques(List<double> listeNombres) {
  if (listeNombres.isEmpty) {
    throw ArgumentError('La liste ne peut pas être vide');
  }

  double minVal =
      listeNombres.reduce((current, next) => current < next ? current : next);
  double maxVal =
      listeNombres.reduce((current, next) => current > next ? current : next);
  double somme = listeNombres.reduce((current, next) => current + next);
  double moyenne = somme / listeNombres.length;

  Map<String, double> statistiques = {
    'min': minVal,
    'max': maxVal,
    'moyenne': moyenne,
  };

  return statistiques;
}

Map<String, dynamic> convertirEnMap(List<String> cles, List<dynamic> valeurs) {
  // Vérifier si les listes ont la même longueur
  if (cles.length != valeurs.length) {
    throw ArgumentError(
        "Les listes de clés et de valeurs doivent avoir la même longueur");
  }

  // Créer une Map pour stocker les résultats
  Map<String, dynamic> resultat = {};

  // Remplir la Map avec les clés et les valeurs correspondantes
  for (int i = 0; i < cles.length; i++) {
    resultat[cles[i]] = valeurs[i];
  }

  // Retourner la Map résultante
  return resultat;
}

List<String> filtrerLongueur(List<String> listeChaines, int n) {
  // Liste résultat initialement vide
  List<String> resultat = [];

  // Parcours de chaque chaîne dans la liste
  for (String chaine in listeChaines) {
    // Vérifier si la longueur de la chaîne est supérieure à n
    if (chaine.length > n) {
      // Ajouter la chaîne à la liste résultat
      resultat.add(chaine);
    }
  }

  // Retourner la liste résultat contenant les chaînes filtrées
  return resultat;
}

String remplacer(
    String chaine, String caractereARemplacer, String caractereDeRemplacement) {
  // Utilisation de la méthode replaceAll pour remplacer toutes les occurrences
  String nouvelleChaine =
      chaine.replaceAll(caractereARemplacer, caractereDeRemplacement);

  return nouvelleChaine;
}

//39.Définition de la classe Livre
class Livre {
  // Attributs de la classe
  String titre;
  String auteur;
  int nombrePages;

  // Constructeur de la classe
  Livre(this.titre, this.auteur, this.nombrePages);

  // Méthode pour afficher les informations du livre
  void afficherInformations() {
    print("Livre : $titre");
    print("Auteur : $auteur");
    print("Nombre de pages : $nombrePages");
  }
}

bool validerEmail(String email) {
  // Expression régulière pour valider un email
  // Cette expression accepte les emails selon le format standard
  // Elle ne vérifie pas l'existence réelle de l'email sur un serveur
  final RegExp regex = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');

  return regex.hasMatch(email);
}
