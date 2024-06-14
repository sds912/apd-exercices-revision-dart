import 'dart:io';
import 'dart:math';

void main() {
  // Récupération la date et l'heure actuelles
  DateTime maintenant = DateTime.now();
  print('la date et heure actuelle est : $maintenant');

  // Calculer la date et l'heure 7 jours plus tard
  DateTime dans7Jours = maintenant.add(Duration(days: 7));
  print('Date et heure dans 7 jours : $dans7Jours');

  //moyenne
  List<double> mesNombres = [1.5, 2.0, 3.5, 4.0, 5.5];
  double moyenne = calculerMoyenne(mesNombres);
  print('La moyenne des nombres est : $moyenne');

  //filtre et map
  Map<String, double> notesEtudiants = {
    'Alice': 85,
    'Bob': 60,
    'Charlie': 95,
    'David': 70,
  };

  // trie de liste

  mesNombres = <double>[5.0, 2.5, 8.1, 3.7, 1.2];
  List<double> listeTriee = trier(mesNombres);
  print('la Liste triée est: $listeTriee');

  //palindrome
  String exemple1 = 'radar';
  String exemple2 = 'bonjour';

  print('Est "$exemple1" un palindrome ? ${estPalindrome(exemple1)}');
  print('Est "$exemple2" un palindrome ? ${estPalindrome(exemple2)}');

  //n_aleatoire
  var rng = Random();
  List<int> nombresAleatoires = List.generate(5, (_) => rng.nextInt(100) + 1);

  print('Nombres aléatoires : $nombresAleatoires');
  //conversion
  double temperatureCelsius = 25; // Exemple : 25°C
  double temperatureFahrenheit = convertirEnFahrenheit(temperatureCelsius);
  print('Température en Fahrenheit : $temperatureFahrenheit°F');

  //class complexe
  Complexe c1 = Complexe(2, 2);
  Complexe c2 = Complexe(-3, 4);

  Complexe somme = c1 + c2;
  Complexe produit = c1 * c2;

  print('c1 + c2 = $somme'); // Affiche : "c1 + c2 = -1.0 + 6.0i"
  print('c1 * c2 = $produit'); // Affiche : "c1 * c2 = 14.0 + 2.0i"

  //statistique
  List<double> Nombres = [12.5, 8.0, 15.3, 10.7, 20.1];
  Map<String, double> resultats = statistiques(Nombres);

  print('Minimum : ${resultats['min']}');
  print('Maximum : ${resultats['max']}');
  print('Moyenne : ${resultats['moyenne']}');

  //doublons
  List<String> maListe = ['a', 'b', 'a', 'c', 'b'];
  List<String> listeSansDoublons = supprimerDoublons(maListe);

  print('Liste sans doublons : $listeSansDoublons');

  //conversion de liste en map
  List<String> cles = ['a', 'b', 'c'];
  List<int> valeurs = [1, 2, 3];

  Map<String, int> maMap = convertirEnMap(cles, valeurs);
  print('Map résultante : $maMap');
}
//manipulation de set

//moyenne
double calculerMoyenne(List<double> liste) {
  if (liste.isEmpty) {
    throw ArgumentError('La liste ne peut pas être vide.');
  }

  double somme = liste.reduce((a, b) => a + b);
  return somme / liste.length;
}

//filtre et map

//trie de liste
List<double> trier(List<double> liste) {
  liste.sort();
  return liste;
}

//palindrom
bool estPalindrome(String chaine) {
  // Supprimer les espaces et convertir en minuscules pour la comparaison
  chaine = chaine.replaceAll(' ', '').toLowerCase();

  // Vérifier si la chaîne est égale à son inverse
  return chaine == chaine.split('').reversed.join('');
}

//conversion
double convertirEnFahrenheit(double temperatureCelsius) {
  return (temperatureCelsius * 1.8) + 32;
}

//class complexe
class Complexe {
  double partieReelle;
  double partieImaginaire;

  Complexe(this.partieReelle, this.partieImaginaire);

  Complexe operator +(Complexe autre) {
    return Complexe(
      partieReelle + autre.partieReelle,
      partieImaginaire + autre.partieImaginaire,
    );
  }

  Complexe operator *(Complexe autre) {
    double nouvellePartieReelle = partieReelle * autre.partieReelle -
        partieImaginaire * autre.partieImaginaire;
    double nouvellePartieImaginaire = partieReelle * autre.partieImaginaire +
        partieImaginaire * autre.partieReelle;

    return Complexe(nouvellePartieReelle, nouvellePartieImaginaire);
  }

  @override
  String toString() {
    return '${partieReelle} + ${partieImaginaire}i';
  }
}

//statistique
Map<String, double> statistiques(List<double> liste) {
  if (liste.isEmpty) {
    throw ArgumentError('La liste ne peut pas être vide.');
  }

  double min = liste.reduce((a, b) => a < b ? a : b);
  double max = liste.reduce((a, b) => a > b ? a : b);
  double moyenne = liste.reduce((a, b) => a + b) / liste.length;

  return {
    'min': min,
    'max': max,
    'moyenne': moyenne,
  };
}

// doublons
List<T> supprimerDoublons<T>(List<T> liste) {
  return liste.toSet().toList();
}

//conversion de liste en map
Map<K, V> convertirEnMap<K, V>(List<K> cles, List<V> valeurs) {
  if (cles.length != valeurs.length) {
    throw ArgumentError('Les listes doivent avoir la même longueur.');
  }

  return Map.fromIterables(cles, valeurs);
}
