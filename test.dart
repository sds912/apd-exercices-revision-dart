void main() {
  //Déclaration de Variables
  String nom = "Malick";
  int age = 22;
  double pi =3.14;
  //Types de Variables
  bool isFlutterAwesome = true;
  print(nom);
  print(age);
  print(pi);
  print(isFlutterAwesome);
  //Variables Finales et Constantes
  String nomComplet = "Mamadou Malick Cisse";
  const int vitesseLumiere = 299792458;
  print(nomComplet);
  print(vitesseLumiere);
  //liste
  List<int> nombres = [1,2,3,4,5];
  nombres.add(6);
  print(nombres);
  //maps
  Map<String,dynamic> etudiant = {
    "nom": "Doucouré",
    "age": 21,
    "filiere": "APD",
  };
  etudiant["note"]=85;
  print(etudiant);
  //Fonctions
  void bonjour(String nom) {
  print("Bonjour, $nom!");
}
bonjour("Malick");
//Fonction addition
int addition(int a, int b) {
  return a + b;
}
// Appel de la fonction addition 
int resultat = addition(5, 7);
print("Le résultat de l'addition est : $resultat");

//Conditions (if, else)
void verifierNombre(int nombre) {
  if (nombre > 0) {
    print("$nombre est un nombre positif.");
  } else if (nombre < 0) {
    print("$nombre est un nombre négatif.");
  } else {
    print("$nombre est zéro.");
  }
}
// Appel de la fonction 
verifierNombre(5);

//Boucles (for, while)
//Boucle while pour afficher les nombres de 10 à 1 :
int j = 10;
while (j >= 1) {
  print(j);
  j--;
}

//Calcul de Factorielle
int factorielle(int n) {
  if (n == 0) {
    return 1;
  } else {
    return n * factorielle(n - 1);
  }
}
 print(factorielle(5));


 //Filtrage de Liste
 List<int> filtrerPairs(List<int> nombres) {
  return nombres.where((nombre) => nombre % 2 == 0).toList();
}
 print(filtrerPairs([1, 2, 3, 4, 5, 6]));

 //Concaténation de Chaînes
 String concatener(String a, String b) {
  return a + b;
}
  print(concatener("Salut", "Malick"));

  //Recherche dans une Liste
  bool rechercher(List<String> liste, String recherche) {
  return liste.contains(recherche);
}
 print(rechercher(["apple", "banana", "orange"], "banana"));  

  //Calcul de la Moyenne
  double moyenne(List<num> nombres) {
  if (nombres.isEmpty) return 0;

  var total = nombres.reduce((a, b) => a + b);
  return total / nombres.length;
}
 print(moyenne([1, 2, 3, 4, 5]));

  //Trie de Liste
  List<int> trier(List<int> nombres) {
  nombres.sort();
  return nombres;
}
  print('\nListe triée:');
  print(trier(nombres));

  //Vérification de Palindrome
  bool estPalindrome(String chaine) {
  String chaineInverse = chaine.split('').reversed.join('');
  return chaine == chaineInverse;
}
 // Vérification de Palindrome
  String chainePalindrome = 'radar';
  String chaineNonPalindrome = 'hello';
  print('\nEst "$chainePalindrome" un palindrome? ${estPalindrome(chainePalindrome)}');
  print('Est "$chaineNonPalindrome" un palindrome? ${estPalindrome(chaineNonPalindrome)}');

  //Conversion de Température
  double convertirEnFahrenheit(double celsius) {
  return (celsius * 9 / 5) + 32;
}


   double temperatureCelsius = 25;
  print('\n$temperatureCelsius °C correspond à ${convertirEnFahrenheit(temperatureCelsius)} °F');

  //Statistiques de Liste
  Map<String, double> statistiques(List<double> nombres) {
  if (nombres.isEmpty) return {};

  double min = nombres.reduce((curr, next) => curr < next ? curr : next);
  double max = nombres.reduce((curr, next) => curr > next ? curr : next);
  double moyenne = nombres.reduce((a, b) => a + b) / nombres.length;

  return {'min': min, 'max': max, 'moyenne': moyenne};
}


   List<double> listeStatistiques = [2.5, 7.3, 1.0, 9.4, 3.2];
  print('\nStatistiques de la liste: ${statistiques(listeStatistiques)}');


  //Suppression des Doublons
  List<T> supprimerDoublons<T>(List<T> liste) {
  return liste.toSet().toList();
}
 List<int> listeDoublons = [1, 2, 2, 3, 4, 4, 5];
  print('\nListe sans doublons: ${supprimerDoublons(listeDoublons)}');

  //Conversion de Listes en Map
  Map<K, V> convertirEnMap<K, V>(List<K> cles, List<V> valeurs) {
  assert(cles.length == valeurs.length);

  Map<K, V> map = {};
  for (int i = 0; i < cles.length; i++) {
    map[cles[i]] = valeurs[i];
  }
  return map;
}


    List<String> cles = ['a', 'b', 'c'];
  List<int> valeurs = [1, 2, 3];
  print('\nMap à partir de listes: ${convertirEnMap(cles, valeurs)}');


  //Filtrage de Chaînes par Longueur
  List<String> filtrerLongueur(List<String> chaines, int n) {
  return chaines.where((chaine) => chaine.length > n).toList();
}
 List<String> chaines = ['Pomme', 'banana', 'Fraise', 'date'];
  int longueurMinimale = 5;
  print('\nChaines avec longueur > $longueurMinimale: ${filtrerLongueur(chaines, longueurMinimale)}');

  //Manipulation de Set
  void manipulationSet() {
  Set<int> ensemble = Set();
  ensemble.addAll([1, 2, 3, 4, 5]);

  ensemble.remove(3);

  print(ensemble);
}

 print('\nManipulation de Set:');
  manipulationSet();

    // Inversion de Chaîne
    String inverser(String chaine) {
  return chaine.split('').reversed.join('');
}



    String chaineOriginale = 'Diamniadio';
  print('\nInversion de "$chaineOriginale": ${inverser(chaineOriginale)}');

  //Remplacement de Caractères
  String remplacer(String chaine, String ancien, String nouveau) {
  return chaine.replaceAll(ancien, nouveau);
}
String chaine = 'apple';
  String ancienCaractere = 'p';
  String nouveauCaractere = 'x';
  print('\nRemplacement dans "$chaine": ${remplacer(chaine, ancienCaractere, nouveauCaractere)}');

// Validation d'Email
bool validerEmail(String email) {
  RegExp regex = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
  return regex.hasMatch(email);
}



  String emailValide = 'test@example.com';
  String emailInvalide = 'invalid-email';
  print('\nEst "$emailValide" un email valide? ${validerEmail(emailValide)}');
  print('Est "$emailInvalide" un email valide? ${validerEmail(emailInvalide)}');

}