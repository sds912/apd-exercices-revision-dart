import 'dart:convert';
  import 'dart:math';
void main(){


  // 21. Concaténation de Chaînes
  String concatener(String chaine1, String chaine2) {
  return chaine1 + chaine2;
}
String resultat = concatener('Bonjour ', 'Adja');
  print(resultat);

  // 22. Recherche dans une Liste

  bool rechercher(List<String> liste, String recherche) {
  return liste.contains(recherche);
}
  List<String> liste = ['apple', 'banana', 'orange', 'grape'];
  String recherche = 'orange';
  print('La recherche a été trouvée: ${rechercher(liste, recherche)}');

  // 23. Manipulation de Date et Heure

  
  DateTime maintenant = DateTime.now();
  print('Date et heure actuelles: $maintenant');
  
  DateTime dateDans7Jours = maintenant.add(Duration(days: 7));
  print('Date et heure dans 7 jours: $dateDans7Jours');


  // 24. Calcul de la Moyenne

  double moyenne(List<int> nombres) {
  int somme = nombres.reduce((value, element) => value + element) as int;
  return somme / nombres.length;
}
  List<int> nombres = [85, 90, 75, 95, 80];
  print('La moyenne est: ${moyenne(nombres)}');


  // 25. Filtrage de Map

 Map<String, int> filtrerEtudiants(Map<String, int> etudiants) {
  return Map.fromEntries(
    etudiants.entries.where((entry) => entry.value > 70)
  );
}


  Map<String, int> etudiants = {
    'Maman': 85,
    'coumba': 60,
    'saly': 75,
    'David': 90
  };

  Map<String, int> etudiantsFiltres = filtrerEtudiants(etudiants);
  print('Étudiants avec des notes supérieures à 70: $etudiantsFiltres');

  // 26. Tri de Liste

  List<int> trier(List<int> nombres) {
  nombres.sort();
  return nombres;
}


  List<int> nombresTries = trier(nombres);
  print('Liste triée: $nombresTries');

  // 27. Vérification de Palindrome

  bool estPalindrome(String chaine) {
  String chaineInverse = chaine.split('').reversed.join('');
  return chaine == chaineInverse;
}


  String chaine = 'radar';
  print('Est-ce un palindrome: ${estPalindrome(chaine)}');

  // 28. Génération de Nombres Aléatoires

  Random random = Random();
  for (int i = 0; i < 5; i++) {
    int nombreAleatoire = random.nextInt(100) + 1;
    print('Nombre aléatoire: $nombreAleatoire');
  
}

// 29. Conversion de Température


double convertirEnFahrenheit(double celsius) {
  return (celsius * 9 / 5) + 32;
}

  double temperatureCelsius = 25;
  double temperatureFahrenheit = convertirEnFahrenheit(temperatureCelsius);
  print('Température en Fahrenheit: $temperatureFahrenheit °F');


  // 30. Classe Complexe

  Complexe a = Complexe(3, 2);
  Complexe b = Complexe(1, 4);
  
  Complexe somme = a.addition(b);
  Complexe produit = a.multiplication(b);
  
  print('Somme: ${somme.reel} + ${somme.imaginaire}i');
  print('Produit: ${produit.reel} + ${produit.imaginaire}i');

  
}
class Complexe {
  double reel;
  double imaginaire;
  
  Complexe(this.reel, this.imaginaire);
  
  Complexe addition(Complexe autre) {
    return Complexe(reel + autre.reel, imaginaire + autre.imaginaire);
  }
  
  Complexe multiplication(Complexe autre) {
    double reelResultat = reel * autre.reel - imaginaire * autre.imaginaire;
    double imaginaireResultat = reel * autre.imaginaire + imaginaire * autre.reel;
    return Complexe(reelResultat, imaginaireResultat);
  }
}





















































