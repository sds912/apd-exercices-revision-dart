import 'dart:core';
import 'dart:math';

// 22. Recherche dans une Liste
bool rechercher(List<String> liste, String recherche) {
  return liste.contains(recherche);
}

// 23. Manipulation de Date et Heure
void afficherDates() {
  DateTime now = DateTime.now();
  print("Date et heure actuelles: $now");
  DateTime futureDate = now.add(Duration(days: 7));
  print("Date et heure dans 7 jours: $futureDate");
}

// 24. Calcul de la Moyenne
double moyenne(List<int> nombres) {
  if (nombres.isEmpty) return 0;
  return nombres.reduce((a, b) => a + b) / nombres.length;
}

// 25. Filtrage de Map
Map<String, int> filtrerEtudiants(Map<String, int> etudiants) {
  return Map.fromEntries(etudiants.entries.where((entry) => entry.value > 70));
}

// 26. Trie de Liste
List<int> trier(List<int> nombres) {
  nombres.sort();
  return nombres;
}

// 27. Vérification de Palindrome
bool estPalindrome(String chaine) {
  String reversed = chaine.split('').reversed.join('');
  return chaine == reversed;
}

// 28. Génération de Nombres Aléatoires
void genererNombresAleatoires() {
  Random random = Random();
  List<int> nombres = List.generate(5, (index) => random.nextInt(100) + 1);
  print("Nombres aléatoires: $nombres");
}

// 29. Conversion de Température
double convertirEnFahrenheit(double celsius) {
  return (celsius * 9 / 5) + 32;
}

void main() {
  // Exemple d'utilisation des fonctions

  // 22. Recherche dans une Liste
  List<String> liste = ['apple', 'banana', 'orange', 'grape', 'pineapple'];
  String recherche = 'banana';
  print("La recherche \"$recherche\" est dans la liste: ${rechercher(liste, recherche)}");

  // 23. Manipulation de Date et Heure
  afficherDates();

  // 24. Calcul de la Moyenne
  List<int> notes = [75, 80, 90, 65, 85];
  print("La moyenne des notes est: ${moyenne(notes)}");

  // 25. Filtrage de Map
  Map<String, int> etudiants = {'Alice': 85, 'Bob': 60, 'Charlie': 75, 'David': 95};
  print("Étudiants avec une note supérieure à 70: ${filtrerEtudiants(etudiants)}");

  // 26. Trie de Liste
  List<int> nombres = [5, 3, 9, 2, 7];
  print("Liste triée: ${trier(nombres)}");

  // 27. Vérification de Palindrome
  String chaine1 = 'radar';
  String chaine2 = 'hello';
  print("\"$chaine1\" est un palindrome: ${estPalindrome(chaine1)}");
  print("\"$chaine2\" est un palindrome: ${estPalindrome(chaine2)}");

  // 28. Génération de Nombres Aléatoires
  genererNombresAleatoires();

  // 29. Conversion de Température
  double celsius = 25;
  print("$celsius°C équivaut à ${convertirEnFahrenheit(celsius)}°F");
}
