import 'dart:math';

// Configuration de l'environnement de développement
void configureEnvironment() {
  print("Environnement Dart configuré.");
}

// Variables en Dart
void declarationDeVariables() {
  String nom = "Diouf";
  int age = 22;
  print("Nom: $nom, Age: $age");
}

void typesDeVariables() {
  double pi = 3.14;
  bool isFlutterAwesome = true;
  print("Pi: $pi, Flutter est génial: $isFlutterAwesome");
}

void variablesFinalesEtConstantes() {
  final String nomComplet = "Mame Sosse Diouf";
  const int vitesseLumiere = 299792458;
  print("Nom Complet: Mame Sosse Diouf, Vitesse de la lumière: $vitesseLumiere m/s");
}

// Lists et Maps
void utilisationDesListes() {
  List<int> nombres = [1, 2, 3, 4, 5];
  nombres.add(6);
  print("Liste de nombres: $nombres");
}

void utilisationDesMaps() {
  Map<String, dynamic> etudiant = {
    'nom': 'Diouf',
    'age': 22,
    'classe': 'APD'
  };
  etudiant['note'] = 18;
  print("Map étudiante: etudiante");
}

// Fonctions
void bonjour(String nom) {
  print('Bonjour, Mame Sosse!');
}

int addition(int a, int b) {
  return a + b;
}

// Structures de Contrôle
void verifierNombre(int nombre) {
  if (nombre > 0) {
    print("Le nombre est positif");
  } else if (nombre < 0) {
    print("Le nombre est négatif");
  } else {
    print("Le nombre est zéro");
  }
}

void boucles() {
  for (int i = 1; i <= 10; i++) {
    print(i);
  }

  int j = 10;
  while (j > 0) {
    print(j);
    j--;
  }
}

double division(int a, int b) {
  if (b == 0) {
    throw Exception("Le dénominateur ne peut pas être zéro");
  }
  return a / b;
}

// Classes
class Personne {
  String _nom;
  int _age;

  Personne(this._nom, this._age);

  String get nom => _nom;
  set nom(String nom) => _nom = nom;

  int get age => _age;
  set age(int age) => _age = age;
}

class Etudiant extends Personne {
  String classe;

  Etudiant(String nom, int age, this.classe) : super(nom, age);
}

// Imports et Exports
int carre(int nombre) {
  return nombre * nombre;
}

// L’asynchrone
Future<String> fetchData() async {
  await Future.delayed(Duration(seconds: 2));
  return "Données reçues";
}

void gestionDesFuturesEtStreams() {
  Stream<int> stream = Stream.periodic(Duration(seconds: 1), (int count) => count);
  stream.listen((int value) {
    print(value);
  });
}

// Exercices Pratiques Supplémentaires
int factorielle(int n) {
  if (n <= 1) return 1;
  return n * factorielle(n - 1);
}

List<int> filtrerPairs(List<int> nombres) {
  return nombres.where((nombre) => nombre % 2 == 0).toList();
}

String concatener(String str1, String str2) {
  return str1 + str2;
}

bool rechercher(List<String> liste, String chaine) {
  return liste.contains(chaine);
}

void manipulationDeDateEtHeure() {
  DateTime maintenant = DateTime.now();
  DateTime plusSeptJours = maintenant.add(Duration(days: 7));
  print("Date et heure actuelles: $maintenant");
  print("Date et heure dans 7 jours: $plusSeptJours");
}

double moyenne(List<int> nombres) {
  int somme = nombres.reduce((a, b) => a + b);
  return somme / nombres.length;
}

Map<String, int> filtrerEtudiants(Map<String, int> etudiants) {
  return etudiants..removeWhere((nom, note) => note <= 70);
}

List<int> trier(List<int> nombres) {
  nombres.sort();
  return nombres;
}

bool estPalindrome(String chaine) {
  String reverse = chaine.split('').reversed.join('');
  return chaine == reverse;
}

void genererNombresAleatoires() {
  Random random = Random();
  for (int i = 0; i < 5; i++) {
    print(random.nextInt(100) + 1);
  }
}

double convertirEnFahrenheit(double celsius) {
  return (celsius * 9 / 5) + 32;
}

class Complexe {
  double reelle;
  double imaginaire;

  Complexe(this.reelle, this.imaginaire);

  Complexe operator +(Complexe autre) {
    return Complexe(this.reelle + autre.reelle, this.imaginaire + autre.imaginaire);
  }

  Complexe operator *(Complexe autre) {
    return Complexe(
      this.reelle * autre.reelle - this.imaginaire * autre.imaginaire,
      this.reelle * autre.imaginaire + this.imaginaire * autre.reelle
    );
  }
}

Map<String, dynamic> statistiques(List<int> nombres) {
  int min = nombres.reduce((a, b) => a < b ? a : b);
  int max = nombres.reduce((a, b) => a > b ? a : b);
  double moyenne = nombres.reduce((a, b) => a + b) / nombres.length;
  return {'min': min, 'max': max, 'moyenne': moyenne};
}

List<int> supprimerDoublons(List<int> nombres) {
  return nombres.toSet().toList();
}

Map<K, V> convertirEnMap<K, V>(List<K> cles, List<V> valeurs) {
  return Map.fromIterables(cles, valeurs);
}

class CompteBancaire {
  double solde = 0.0;

  void deposer(double montant) {
    solde += montant;
  }

  void retirer(double montant) {
    if (montant <= solde) {
      solde -= montant;
    } else {
      print("Fonds insuffisants");
    }
  }

  double verifierSolde() {
    return solde;
  }
}

List<String> filtrerLongueur(List<String> chaines, int n) {
  return chaines.where((chaine) => chaine.length > n).toList();
}

void manipulationDeSet() {
  Set<int> nombres = {1, 2, 3};
  nombres.add(4);
  nombres.remove(2);
  print("Contenu du Set: $nombres");
}

String inverser(String chaine) {
  return chaine.split('').reversed.join('');
}

String remplacer(String chaine, String ancienCaractere, String nouveauCaractere) {
  return chaine.replaceAll(ancienCaractere, nouveauCaractere);
}

class Livre {
  String titre;
  String auteur;
  int pages;

  Livre(this.titre, this.auteur, this.pages);

  void afficherInfo() {
    print("Titre: $titre, Auteur: $auteur, Pages: $pages");
  }
}

bool validerEmail(String email) {
  RegExp regExp = RegExp(r'^[^@]+@[^@]+\.[^@]+');
  return regExp.hasMatch(email);
}

void main() async {
  configureEnvironment();
  declarationDeVariables();
  typesDeVariables();
  variablesFinalesEtConstantes();
  utilisationDesListes();
  utilisationDesMaps();
  bonjour('Khady Seye');
  print("5 + 7 = ${addition(5, 7)}");
  verifierNombre(5);
  boucles();
  try {
    print(division(10, 2));
    print(division(10, 0));
  } catch (e) {
    print(e);
  }

  Personne personne1 = Personne("Seye", 23);
  personne1.nom = "Seye";
  print("Nom: ${personne1.nom}, Age: ${personne1.age}");

  Etudiant etudiant1 = Etudiant("Seye", 23, "DBE");
  print("Nom: ${etudiant1.nom}, Age: ${etudiant1.age}, Classe: ${etudiant1.classe}");

  print("Carré de 4: ${carre(4)}");
  print(await fetchData());
  gestionDesFuturesEtStreams();

  print("Factorielle de 5: ${factorielle(5)}");
  print("Nombres pairs: ${filtrerPairs([1, 2, 3, 4, 5, 6])}");
  print(concatener("Bonjour, ", "ISEPAT!"));
  print(rechercher(["Citron", "banana", "Pomme"], "banana"));
  manipulationDeDateEtHeure();
  print("Moyenne: ${moyenne([1, 2, 3, 4, 5])}");
  print("Étudiants filtrés: ${filtrerEtudiants({'Adja': 30, 'Awa': 24, 'Cheikh': 27})}");
  print("Liste triée: ${trier([5, 3, 8, 1, 2])}");
  print("Radar est un palindrome: ${estPalindrome("radar")}");
  genererNombresAleatoires();
  print("30°C en Fahrenheit: ${convertirEnFahrenheit(30)}");

  Complexe complexe1 = Complexe(1, 2);
  Complexe complexe2 = Complexe(3, 4);
  Complexe somme = complexe1 + complexe2;
  Complexe produit = complexe1 * complexe2;
  print("Somme: ${somme.reelle} + ${somme.imaginaire}i");
  print("Produit: ${produit.reelle} + ${produit.imaginaire}i");

  print("Statistiques: ${statistiques([1, 2, 3, 4, 5])}");
  print("Liste sans doublons: ${supprimerDoublons([1, 2, 2, 3, 4, 4, 5])}");
  print("Map: ${convertirEnMap(['a', 'b', 'c'], [1, 2, 3])}");

  CompteBancaire compte = CompteBancaire();
  compte.deposer(100);
  compte.retirer(50);
  print("Solde: ${compte.verifierSolde()}");

  print("Chaînes filtrées: ${filtrerLongueur(["apple", "banana", "cherry"], 5)}");
  manipulationDeSet();
  print("Inversé: ${inverser("dart")}");
  print("Remplacé: ${remplacer("hello world", "world", "dart")}");

  Livre livre = Livre("1984", "George Orwell", 328);
  livre.afficherInfo();

  print("Email valide: ${validerEmail("example@example.com")}");
  print("Email valide: ${validerEmail("example@com")}");
}
