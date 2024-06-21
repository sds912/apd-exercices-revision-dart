/*int factorielle(int n) { // calcul de factoriell
  if (n <= 1) return 1;
  return n * factorielle(n - 1);
}

void main() {
  print(factorielle(5)); 
}

List<int> filtrerPairs(List<int> liste) { // filtrage de liste
  return liste.where((x) => x.isEven).toList();
}

void main() {
  print(filtrerPairs([1, 2, 3, 4, 5])); // Affiche: [2, 4]
}

String concatener(String chaine1, String chaine2) { // concantenation de chaine
  return '$chaine1$chaine2';
}

void main() {
  print(concatener('Bonjour', ' Monde')); // Affiche: Bonjour Monde
}

bool rechercher(List<String> liste, String chaine) { // recherche dans une liste
  return liste.contains(chaine);
}

void main() {
  print(rechercher(['apple', 'banana', 'orange'], 'banana')); // Affiche: true
  print(rechercher(['apple', 'banana', 'orange'], 'grape'));  // Affiche: false
}

void afficherDates() { // mamipulation de date et heure
  var maintenant = DateTime.now();
  var plusSeptJours = maintenant.add(Duration(days: 7));
  print('Date et heure actuelles: $maintenant');
  print('Date et heure dans 7 jours: $plusSeptJours');
}

void main() {
  afficherDates();
}

double moyenne(List<int> liste) {// calcule de la moyenne
  if (liste.isEmpty) return 0;
  return liste.reduce((a, b) => a + b) / liste.length;
}

void main() {
  print(moyenne([1, 2, 3, 4, 5])); // Affiche: 3.0
}

Map<String, int> filtrerEtudiants(Map<String, int> etudiants) {// filtrage de map
  return Map.fromEntries(etudiants.entries.where((entry) => entry.value > 70));
}

void main() {
  var etudiants = {'moussa': 85, 'Bob': 65, 'demba': 90};
  print(filtrerEtudiants(etudiants)); // Affiche: {Alice: 85, Charlie: 90}
}

List<int> trier(List<int> liste) {// trie de liste
  liste.sort();
  return liste;
}

void main() {
  print(trier([5, 2, 9, 1, 5, 6])); // Affiche: [1, 2, 5, 5, 6, 9]
}

bool estPalindrome(String chaine) {// verification de palindrome
  return chaine == chaine.split('').reversed.join('');
}

void main() {
  print(estPalindrome('radar')); // Affiche: true
  print(estPalindrome('hello')); // Affiche: false
}

import 'dart:math';

List<int> genererNombresAleatoires() {// generation de nombre aleatoire
  var random = Random();
  return List.generate(5, (_) => random.nextInt(100) + 1);
}

void main() {
  print(genererNombresAleatoires()); // Affiche: [Random numbers between 1 and 100]
}

double convertirEnFahrenheit(double celsius) {// convertion de temperature
  return celsius * 9 / 5 + 32;
}

void main() {
  print(convertirEnFahrenheit(25)); // Affiche: 77.0
}

class Complexe { // classe complexe
  double real, imag;

  Complexe(this.real, this.imag);

  Complexe operator +(Complexe other) => Complexe(real + other.real, imag + other.imag);

  Complexe operator *(Complexe other) => Complexe(
      real * other.real - imag * other.imag,
      real * other.imag + imag * other.real
  );

  @override
  String toString() => '$real + ${imag}i';
}

void main() {
  var a = Complexe(1, 2);
  var b = Complexe(3, 4);
  print(a + b); // Affiche: 4.0 + 6.0i
  print(a * b); // Affiche: -5.0 + 10.0i
}

Map statistiques(List liste) {// statistique de liste
  if (liste.isEmpty) return {};
  return {
    'min': liste.reduce((a, b) => a < b ? a : b).toDouble(),
    'max': liste.reduce((a, b) => a > b ? a : b).toDouble(),
    'moyenne': liste.reduce((a, b) => a + b) / liste.length,
  };
}

void main() {
  print(statistiques([1, 2, 3, 4, 5])); // Affiche: {min: 1.0, max: 5.0, moyenne: 3.0}
}

List supprimerDoublons(List liste) {//supression de doublon
  return liste.toSet().toList();
}

void main() {
  print(supprimerDoublons([1, 2, 2, 3, 4, 4, 5])); // Affiche: [1, 2, 3, 4, 5]
}

Map convertirEnMap(List cles, List valeurs) {// convertion de liste en map
  return Map.fromIterables(cles, valeurs);
}

void main() {
  var cles = ['a', 'b', 'c'];
  var valeurs = [1, 2, 3];
  print(convertirEnMap(cles, valeurs)); // Affiche: {a: 1, b: 2, c: 3}
}

class CompteBancaire {//classe de gestion de banque
  double solde = 0;

  CompteBancaire({this.solde = 0});

  void deposer(double montant) {
    solde += montant;
  }

  void retirer(double montant) {
    if (montant <= solde) {
      solde -= montant;
    } else {
      print('Solde insuffisant');
    }
  }

  double verifierSolde() {
    return solde;
  }
}

void main() {
  var compte = CompteBancaire(solde: 100);
  compte.deposer(50);
  compte.retirer(30);
  print(compte.verifierSolde()); // Affiche: 120
}

List filtrerLongueur(List liste, int n) {//filtrage de chaine de longueur
  return liste.where((chaine) => chaine.length > n).toList();
}

void main() {
  print(filtrerLongueur(['apple', 'banana', 'pear', 'kiwi'], 4)); // Affiche: [apple, banana]
}

void manipulationSet() {//manipulation de set
  var s = {1, 2, 3};
  s.remove(2);
  print(s);
}

void main() {
  manipulationSet(); // Affiche: {1, 3}
}

String inverser(String chaine) {// invertion de chaine
  return chaine.split('').reversed.join('');
}

void main() {
  print(inverser('hello')); // Affiche: olleh
}

String remplacer(String chaine, String ancien, String nouveau) {//remplacement de caracteres
  return chaine.replaceAll(ancien, nouveau);
}

void main() {
  print(remplacer('hello world', 'world', 'Dart')); // Affiche: hello Dart
}

class Livre {// class de gestion de livre
  String titre;
  String auteur;
  int pages;

  Livre(this.titre, this.auteur, this.pages);

  void afficherInfos() {
    print('Titre: $titre, Auteur: $auteur, Pages: $pages');
  }
}

void main() {
  var livre = Livre('Une si long lettre', 'mariama ba', 96);
  livre.afficherInfos(); // Affiche: Titre: Le Petit Prince, Auteur: Antoine de Saint-Exupéry, Pages: 96
}*/

bool validerEmail(String email) {//validation d'Email
  var pattern = r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$';
  return RegExp(pattern).hasMatch(email);
}

void main() {
  print(validerEmail('test@example.com'));  // Affiche: true
  print(validerEmail('testexample.com'));   // Affiche: false
}
























