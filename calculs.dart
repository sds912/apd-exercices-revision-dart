//exo 15
int carre(int nombre) {
  return nombre * nombre;
}
//exo 19
int factorielle(int n) {
  if (n == 0 || n == 1) {
    return 1;
  } else {
    return n * factorielle(n - 1);
  }
}
//exo20
List<int> filtrerPairs(List<int> liste) {
  return liste.where((nombre) => nombre % 2 == 0).toList();
}
//exo 21
String concatener(String a, String b) {
  return a + b;
}
//exo22
bool rechercher(List<String> liste, String recherche) {
  return liste.contains(recherche);
}
//exo23
import 'package:intl/intl.dart';

void afficherDates() {
  DateTime maintenant = DateTime.now();
  print("Date et heure actuelles: ${DateFormat('yyyy-MM-dd HH:mm:ss').format(maintenant)}");
  
  DateTime dateDans7Jours = maintenant.add(Duration(days: 7));
  print("Date et heure dans 7 jours: ${DateFormat('yyyy-MM-dd HH:mm:ss').format(dateDans7Jours)}");
}

//exo 24
double moyenne(List<double> nombres) {
  if (nombres.isEmpty) return 0.0;
  
  double somme = nombres.reduce((a, b) => a + b);
  return somme / nombres.length;
}
//exo 25
Map<String, double> filtrerEtudiants(Map<String, double> etudiants) {
  return etudiants.entries.where((entry) => entry.value > 70).toMap();
}
//exo 26
List<int> trier(List<int> liste) {
  liste.sort();
  return liste;
}
//exo 27
bool estPalindrome(String chaine) {
  String chaineInverse = chaine.split('').reversed.join('');
  return chaine.toLowerCase() == chaineInverse.toLowerCase();
}
//exo 28
import 'dart:math';

void genererNombresAleatoires() {
  Random random = Random();
  for (int i = 0; i < 5; i++) {
    int nombreAleatoire = random.nextInt(100) + 1;
    print(nombreAleatoire);
  }
}
//exo 29
double convertirEnFahrenheit(double celsius) {
  return (celsius * 9 / 5) + 32;
}
//exo30
class Complexe {
  double reel;
  double imaginaire;

  Complexe(this.reel, this.imaginaire);

  Complexe operator +(Complexe autre) {
    return Complexe(reel + autre.reel, imaginaire + autre.imaginaire);
  }

  Complexe operator *(Complexe autre) {
    double nouveauReel = reel * autre.reel - imaginaire * autre.imaginaire;
    double nouveauImaginaire = reel * autre.imaginaire + imaginaire * autre.reel;
    return Complexe(nouveauReel, nouveauImaginaire);
  }
}
//exo 31
Map<String, double> statistiques(List<double> nombres) {
  if (nombres.isEmpty) return {};

  double min = nombres.reduce((a, b) => a < b ? a : b);
  double max = nombres.reduce((a, b) => a > b ? a : b);
  double moyenne = nombres.reduce((a, b) => a + b) / nombres.length;

  return {'min': min, 'max': max, 'moyenne': moyenne};
}
//exo32
List<T> supprimerDoublons<T>(List<T> liste) {
  return liste.toSet().toList();
}
//exo33
Map<K, V> convertirEnMap<K, V>(List<K> cles, List<V> valeurs) {
  assert(cles.length == valeurs.length);

  Map<K, V> resultat = {};
  for (int i = 0; i < cles.length; i++) {
    resultat[cles[i]] = valeurs[i];
  }
  return resultat;
}
//exo 34
class CompteBancaire {
  String titulaire;
  double solde;

  CompteBancaire(this.titulaire, this.solde);

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

  void verifierSolde() {
    print('Solde actuel: $solde');
  }
}
//exo 35
List<String> filtrerLongueur(List<String> chaines, int n) {
  return chaines.where((chaine) => chaine.length > n).toList();
}
//exo 36
void manipulationSet() {
  Set<int> numeros = {};
  
  numeros.addAll([1, 2, 3, 4, 5]); // Ajouter des éléments
  
  numeros.remove(3); // Supprimer un élément
  
  print('Contenu final du Set: $numeros'); // Afficher le contenu final
}
//exo 37
String inverser(String chaine) {
  return chaine.split('').reversed.join('');
}
//exo 38
String remplacer(String chaine, String ancien, String nouveau) {
  return chaine.replaceAll(ancien, nouveau);
}
// exo 39
class Livre {
  String titre;
  String auteur;
  int nombrePages;

  Livre(this.titre, this.auteur, this.nombrePages);

  void afficherInformations() {
    print('Titre: $titre, Auteur: $auteur, Nombre de pages: $nombrePages');
  }
}
// exo 40
bool validerEmail(String email) {
  String pattern = r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$';
  RegExp regex = RegExp(pattern);
  return regex.hasMatch(email);
}

