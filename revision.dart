import 'calculs.dart';
import 'dart:async';


void main() {
  // 2. Déclaration de Variables
  String nom = "aminata";
int age = 20;
  print(nom);
  print(age);

  // 3. Types de Variables
  double pi = 3.14;
  bool isFlutterAwesome = true;
  print(pi);
  print(isFlutterAwesome);

  // 4.	Variables Finales et Constantes
  final nomComplet = 'aminata ka';
  const vitesseLumiere = 299792458 ;
  print(nomComplet) ;
  print(vitesseLumiere);

  // vitesseLumiere
  // 5.	Utilisation des Listes
  var nombres = [1,2,3,4,5];
  print(nombres);
  nombres.add(6);
  print(nombres);

  // 6.	Utilisation des Maps
  // •	Créez une map etudiant avec les clés nom, age, et classe et leurs valeurs respectives
  var etudiants = {'Nom':'Awa','Age':20,'Classe':'212'};
  print(etudiants);
  // •	Ajoutez une clé note avec une valeur de 85 à la map etudiant.
  etudiants['note']=85;
  print(etudiants);
  //7.	Définition et Appel de Fonctions
  // •	Écrivez une fonction bonjour qui prend un nom en paramètre et affiche "Bonjour, [nom]!".
  
// Définition de la fonction bonjour
void bonjour(String nom) {
  print('Bonjour, $nom!');
}
// Appel de la fonction bonjour avec un exemple de nom
  bonjour('Jean');

  // 8.	Fonctions avec Paramètres et Valeurs de Retour
int addition(int a, int b){
  return a+b;
}
var somme=addition(5,7);
print(somme);

// Structures de Contrôle
// 9.	Conditions (if, else)
var nombre = 10;
if(nombre > 0){
  print('le nombre est Possitif');
}else if(nombre < 0){
    print('le nombre est Negatif');
}else{
  print('le nombre est Zéro');
}

// 10.	Boucles (for, while)
for (var i=0 ; i<=10 ;i++){
  print(i);
}
var i = 10; 
// Boucle while
  while (i >= 1) { // Condition de la boucle
    print(i); // Afficher la valeur actuelle de i
    i--; // Décrémentation de i
  }  

// 11.	Gestion des Exceptions
double division(double numerateur, double denominateur) {
  if (denominateur == 0) {
    throw Exception("Division par zéro est impossible");
  }
  return numerateur / denominateur;
}

  double a = 10;
  double b = 0;

  try {
    double resultat = division(a, b);
    print("Le résultat de la division est : $resultat");
  } catch (e) {
    print("Erreur: ${e.toString()}");
  }

  // Classes
// 12.	Déclaration de Classes et Objets
// 7.1 Déclaration de Classes et Objets


// 13.	Héritage et Polymorphisme


// Imports et Exports
// 15.	Organisation du Code en Modules
// fichier: main.dart

// L’asynchrone
// 16.	Concepts d’asynchrone en Dart
Future<String> fetchData() async {
  // Simuler un délai de 2 secondes
  await Future.delayed(Duration(seconds: 2));
  // Retourner la chaîne de caractères après le délai
  return "Données reçues";
}

void main() async {
  print('En attente des données...');
  // Appel de la fonction fetchData et attente du résultat
  String result = await fetchData();
  // Affichage du résultat après que l'opération asynchrone soit terminée
  print(result); // Devrait afficher "Données reçues" après 2 secondes
}

// 17.	Utilisation de async et await


// 18.	Gestion des Futures et des Streams

void listenDataStream() {
  // Création du stream avec Stream.periodic qui émet une valeur toutes les secondes
  Stream<int> stream = Stream.periodic(Duration(seconds: 1), (index) => index);

  // Écoute du stream
  stream.listen((value) {
    // Affichage de chaque valeur émise par le stream
    print("Valeur émise : $value");
  });
}

// ignore: unused_element
  print("Écoute du stream de données...");
  // Appel de la fonction pour écouter le stream
  listenDataStream();


// Exercices Pratiques Supplémentaires
// 19.	Calcul de Factorielle



  // 20.	Filtrage de Liste
  List<int> filterPairs(List<int> numbers) {
  // Utilisation de la méthode where pour filtrer les nombres pairs
  List<int> evenNumbers = numbers.where((number) => number % 2 == 0).toList();
  return evenNumbers;
}

  List<int> numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  List<int> evenNumbers = filterPairs(numbers);
  print('Nombres pairs : $evenNumbers');

  // 21.	Concaténation de Chaînes
   // Concaténation de Chaînes
  String concatener(String chaine1, String chaine2) {
  return chaine1 + chaine2;
}
  String resultat = concatener('Bonjour', ' ANNA');
  print(resultat);

  // 22.	Recherche dans une Liste
  // Fonction rechercher
bool rechercher(List<String> liste, String recherche) {
  return liste.contains(recherche);
}
print(rechercher(['apple', 'banana', 'cherry'], 'banana'));

// 23. Manipulation de Date et Heure
void afficherDateHeure() {
  DateTime maintenant = DateTime.now();
  DateTime dansSeptJours = maintenant.add(Duration(days: 7));
  print('Maintenant: $maintenant');
  print('Dans 7 jours: $dansSeptJours');
}
afficherDateHeure();

// 24. Calcul de la Moyenne
double moyenne(List<int> nombres) {
  int somme = nombres.reduce((a, b) => a + b);
  return somme / nombres.length;
}
print(moyenne([1, 2, 3, 4, 5]));

// 25. Filtrage de Map
Map<String, int> filtrerEtudiants(Map<String, int> etudiants) {
  return etudiants..removeWhere((nom, note) => note <= 70);
}
print(filtrerEtudiants({'Awa': 75, 'Oumar': 65, 'Matar': 80}));

// 26.Trie de Liste
List<int> trier(List<int> nombres) {
  nombres.sort();
  return nombres;
}
print(trier([5, 3, 8, 1, 2]));

// 27. Vérification de Palindrome
bool estPalindrome(String chaine) {
  String renversee = chaine.split('').reversed.join('');
  return chaine == renversee;
}
print(estPalindrome('radar'));

// 28. Génération de Nombres Aléatoires




// 29. Conversion de Température
 convertirEnFahrenheit(double celsius) {
  return celsius * 9 / 5 + 32;
}
print(convertirEnFahrenheit(30));

// 30.	Classe Complexe


// 31. Statistiques de Liste
Map<String, double> statistiques(List<int> nombres) {
  double min = nombres.reduce((a, b) => a < b ? a : b).toDouble();
  double max = nombres.reduce((a, b) => a > b ? a : b).toDouble();
  double moy = moyenne(nombres);
  return {'min': min, 'max': max, 'moyenne': moy};
}
print(statistiques([1, 2, 3, 4, 5]));

// 32. Suppression des Doublons
List<int> supprimerDoublons(List<int> liste) {
  return liste.toSet().toList();
}
print(supprimerDoublons([6, 2, 2, 3, 3, 4, 5,5,8]));

// 33. Conversion de Listes en Map
Map<K, V> convertirEnMap<K, V>(List<K> cles, List<V> valeurs) {
  if (cles.length != valeurs.length) {
    throw Exception('Les listes doivent avoir la même longueur');
  }
  return Map.fromIterables(cles, valeurs);
}
print(convertirEnMap(['Anna', 'Baba', 'Coura'], [1, 2, 3]));

// 34.	Classe pour Gestion de Banque







// 35. Filtrage de Chaînes par Longueur
List<String> filtrerLongueur(List<String> chaines, int n) {
  return chaines.where((chaine) => chaine.length > n).toList();
}
print(filtrerLongueur(['orange', 'banana', 'pomme', 'date'], 5));


// 36 Manipulation de Set
void manipulerSet() {
  Set<int> nombres = {8, 2, 4};
  nombres.add(4);
  nombres.remove(2);
  print(nombres);
}
manipulerSet();


// 37. Inversion de Chaîne
String inverser(String chaine) {
  return chaine.split('').reversed.join('');
}
print(inverser('APD'));

//38. Remplacement de Caractères
String remplacer(String chaine, String caractereARemplacer, String caractereDeRemplacement) {
  return chaine.replaceAll(caractereARemplacer, caractereDeRemplacement);
}
print(remplacer('salut', 'a', '0'));

// 39.	Classe pour Gestion de Livres

// 40 Validation d'Email
bool validerEmail(String email) {
  RegExp regExp = RegExp(r'^[^@]+@[^@]+\.[^@]+');
  return regExp.hasMatch(email);
}
print(validerEmail('ada@gmail.com'));
print(validerEmail('ada@gmail'));





  
  
}