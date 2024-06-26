import 'dart:async';

// Définition de la classe Personne
class Personne {
  String nom;
  int age;

  Personne(this.nom, this.age); // Constructeur

  // Getter et setter pour le nom
  String get getNom => nom;
  set setNom(String nom) => this.nom = nom;

  // Getter et setter pour l'âge
  int get getAge => age;
  set setAge(int age) => this.age = age;
}

// Définition de la classe Etudiant qui hérite de la classe Personne
class Etudiant extends Personne {
  String classe;

  // Constructeur de la classe Etudiant
  Etudiant(String nom, int age, this.classe) : super(nom, age);
}

// Fonction fetchData pour simuler la récupération de données asynchrones
Future<String> fetchData() async {
  await Future.delayed(Duration(seconds: 2));
  return "Données reçues";
}

// Fonction mainAsync pour afficher les données récupérées de manière asynchrone
Future<void> mainAsync() async {
  String data = await fetchData();
  print(data);
}

// Fonction listenToStream pour écouter les valeurs émises par un stream
void listenToStream() {
  Stream<int> stream = Stream.periodic(Duration(seconds: 1), (i) => i).take(5);
  stream.listen((val) {
    print(val);
  });
}

// Fonction factorielle pour calculer la factorielle d'un entier
int factorielle(int n) {
  if (n <= 1) return 1;
  return n * factorielle(n - 1);
}

// Fonction filtrerPairs pour filtrer les nombres pairs d'une liste
List<int> filtrerPairs(List<int> nombres) {
  return nombres.where((n) => n % 2 == 0).toList();
}

// Fonction concatener pour concaténer deux chaînes de caractères
String concatener(String a, String b) {
  return a + b;
}

// Fonction rechercher pour rechercher une chaîne dans une liste
bool rechercher(List<String> liste, String recherche) {
  return liste.contains(recherche);
}

// Fonction moyenne pour calculer la moyenne d'une liste de nombres
double moyenne(List<int> nombres) {
  double somme = nombres.reduce((a, b) => a + b).toDouble();
  return somme / nombres.length;
}



// Fonction trier pour trier une liste d'entiers
List<int> trier(List<int> liste) {
  liste.sort();
  return liste;
}

// Fonction estPalindrome pour vérifier si une chaîne est un palindrome
bool estPalindrome(String mot) {
  return mot == mot.split('').reversed.join('');
}

// Fonction convertirEnFahrenheit pour convertir une température de Celsius en Fahrenheit
double convertirEnFahrenheit(double celsius) {
  return (celsius * 9 / 5) + 32;
}

// Définition de la classe Complexe pour représenter les nombres complexes
class Complexe {
  int reel;
  int imaginaire;

  Complexe(this.reel, this.imaginaire); // Constructeur

  // Opérateur d'addition pour les nombres complexes
  Complexe operator +(Complexe autre) {
    return Complexe(reel + autre.reel, imaginaire + autre.imaginaire);
  }

  // Opérateur de multiplication pour les nombres complexes
  Complexe operator *(Complexe autre) {
    return Complexe((reel * autre.reel) - (imaginaire * autre.imaginaire), (reel * autre.imaginaire) + (imaginaire * autre.reel));
  }

  @override
  String toString() {
    return '$reel + ${imaginaire}i';
  }
}

// Fonction statistiques pour calculer la somme, la moyenne et la médiane d'une liste d'entiers
Map<String, num> statistiques(List<int> liste) {
  int somme = liste.reduce((a, b) => a + b);
  double moyenne = somme / liste.length;
  liste.sort();
  int mediane = liste.length % 2 == 0 ? (liste[liste.length ~/ 2] + liste[(liste.length ~/ 2) - 1]) ~/ 2 : liste[liste.length ~/ 2];
  return {'Somme': somme, 'Moyenne': moyenne, 'Mediane': mediane};
}

// Fonction supprimerDoublons pour supprimer les doublons d'une liste
List<T> supprimerDoublons<T>(List<T> liste) {
  return liste.toSet().toList();
}

// Fonction convertirEnMap pour convertir deux listes en une map
Map<K, V> convertirEnMap<K, V>(List<K> cles, List<V> valeurs) {
  return Map.fromIterables(cles, valeurs);
}

// Définition de la classe CompteBancaire pour gérer un compte bancaire
class CompteBancaire {
  double _solde;

  CompteBancaire(this._solde); // Constructeur

  // Getter pour le solde
  double get solde => _solde;

  // Méthode pour déposer de l'argent sur le compte
  void deposer(double montant) {
    _solde += montant;
  }

  // Méthode pour retirer de l'argent du compte
  void retirer(double montant) {
    if (montant > _solde) {
      print("Solde insuffisant");
    } else {
      _solde -= montant;
    }
  }
}

// Fonction filtrerLongueur pour filtrer les chaînes d'une liste par longueur
List<String> filtrerLongueur(List<String> liste, int longueur) {
  return liste.where((element) => element.length == longueur).toList();
}

// Fonction inverser pour inverser une chaîne de caractères
String inverser(String chaine) {
  return chaine.split('').reversed.join('');
}

// Fonction remplacer pour remplacer les occurrences d'un caractère dans une chaîne
String remplacer(String chaine, String ancien, String nouveau) {
  return chaine.replaceAll(ancien, nouveau);
}
