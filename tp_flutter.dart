
import 'dart:math';

void main() {
  // VARIABLES EN DART

  // 2. Déclaration de Variables
  String nom = "Cisse";
  int age = 22;

  // 3. Types de Variables
  double pi = 3.14;
  bool isFlutterAwesome = true;

  // 4. Variables Finales et Constantes
  final String nomComplet = "CISSE Mouhamadou Lamine";
  const int vitesseLumiere = 299792458; 


  // LISTES ET MAPS

  // 5. Utilisation des Listes
  List<int> nombres = [1, 2, 3, 4, 5];
  nombres.add(6);
  print(nombres); 

  // 6. Utilisation des Maps
  Map<String, dynamic> etudiant = {
    'nom': 'Lamine Cisse',
    'age': 22,
    'classe': 'APD'
  };
  etudiant['note'] = 85;
  print(etudiant); 


// FONCTIONS

  // 7. Définition et Appel de Fonctions
  void bonjour(String nom) {
    print("Bonjour, $nom!");
  }
  bonjour("Lamine");

  // 8. Fonctions avec Paramètres et Valeurs de Retour
  int addition(int a, int b) {
    return a + b;
  }
  int resultat = addition(5, 7);
  print(resultat); 



// STRUCTURE DE CONTROLE

  // 9. Conditions (if, else)
  void verifierNombre(int nombre) {
    if (nombre > 0) {
      print("Le nombre est positif");
    } else if (nombre < 0) {
      print("Le nombre est négatif");
    } else {
      print("Le nombre est nul");
    }
  }
  verifierNombre(5); 
  verifierNombre(-3); 
  verifierNombre(0); 

  // 10. Boucles (for, while)
  for (int i = 1; i <= 10; i++) {
    print(i);
  }

  int j = 10;
  while (j > 0) {
    print(j);
    j--;
  }

  // 11. Gestion des Exceptions
  double division(double a, double b) {
    if (b == 0) {
      throw Exception("Division par zero non permise");
    }
    return a / b;
  }

  try {
    double resultat = division(10, 0);
    print(resultat);
  } catch (e) {
    print(e);
  }




  
  // 16. Concepts d’asynchrone en Dart
  Future<String> fetchData() {
    return Future.delayed(Duration(seconds: 2), () => "Donnees recues");
  }

  fetchData().then((result) {
    print(result); // Données reçues
  });

  // 17. Utilisation de async et await
  Future<String> fetchDataAsync() async {
    await Future.delayed(Duration(seconds: 2));
    return "Donnees recues";
  }

  void mainAsync() async {
    String result = await fetchDataAsync();
    print(result); // Données reçues
  }
  mainAsync();

  // 18. Gestion des Futures et des Streams
  void listenToStream() {
    Stream<int> stream = Stream.periodic(Duration(seconds: 1), (count) => count);
    stream.listen((value) {
      print(value);
    });
  }
  listenToStream();


  // EXERCICES PRATIQUES SUPPLEMENTAIRES

  // 19. Calcul de Factorielle
  int factorielle(int n) {
    if (n <= 1) return 1;
    return n * factorielle(n - 1);
  }
  print(factorielle(5)); 

  // 20. Filtrage de Liste
  List<int> filtrerPairs(List<int> nombres) {
    return nombres.where((nombre) => nombre % 2 == 0).toList();
  }
  print(filtrerPairs([1, 2, 3, 4, 5, 6])); 

  // 21. Concaténation de Chaînes
  String concatener(String str1, String str2) {
    return str1 + str2;
  }
  print(concatener("Bonjour, ", "les gars!")); 

  // 22. Recherche dans une Liste
  bool rechercher(List<String> liste, String recherche) {
    return liste.contains(recherche);
  }
  print(rechercher(["chat", "chien", "oiseau"], "chien"));

  // 23. Manipulation de Date et Heure
  DateTime maintenant = DateTime.now();
  DateTime futureDate = maintenant.add(Duration(days: 7));
  print("Date et heure actuelles: $maintenant");
  print("Date et heure dans 7 jours: $futureDate");

  // 24. Calcul de la Moyenne
  double moyenne(List<int> nombres) {
    int somme = nombres.reduce((a, b) => a + b);
    return somme / nombres.length;
  }
  print(moyenne([1, 2, 3, 4, 5])); 


  // 26. Trie de Liste
  List<int> trier(List<int> nombres) {
    nombres.sort();
    return nombres;
  }
  print(trier([5, 3, 8, 1, 2])); 

  // 27. Vérification de Palindrome
  bool estPalindrome(String chaine) {
    String reversed = chaine.split('').reversed.join('');
    return chaine == reversed;
  }
  print(estPalindrome("matam")); 
  print(estPalindrome("radar")); 
  print(estPalindrome("hello")); 

  // 28. Génération de Nombres Aléatoires
  var nb = Random();
  List<int> nombresAleatoires = List.generate(5, (_) => nb.nextInt(100) + 1);

  print('Nbres aleatoires : $nombresAleatoires');

  // 29. Conversion de Température
  double convertirEnFahrenheit(double celsius) {
    return celsius * 9 / 5 + 32;
  }
  print(convertirEnFahrenheit(25)); 



  // 31. Statistiques de Liste
  Map<String, double> statistiques(List<int> nombres) {
    int min = nombres.reduce((a, b) => a < b ? a : b);
    int max = nombres.reduce((a, b) => a > b ? a : b);
    double moyenne = nombres.reduce((a, b) => a + b) / nombres.length;
    return {'min': min.toDouble(), 'max': max.toDouble(), 'moyenne': moyenne};
  }
  print(statistiques([1, 2, 3, 4, 5])); 

  // 32. Suppression des Doublons
  List<int> supprimerDoublons(List<int> nombres) {
    return nombres.toSet().toList();
  }
  print(supprimerDoublons([1, 2, 2, 3, 4, 4, 5])); 
  // 33. Conversion de Listes en Map
  Map<String, dynamic> convertirEnMap(List<String> cles, List<dynamic> valeurs) {
    if (cles.length != valeurs.length) {
      throw Exception("Les listes doivent avoir la même longueur");
    }
    Map<String, dynamic> map = {};
    for (int i = 0; i < cles.length; i++) {
      map[cles[i]] = valeurs[i];
    }
    return map;
  }
  print(convertirEnMap(["nom", "age"], ["Cisse", 22])); 

 
  // 35. Filtrage de Chaînes par Longueur
  List<String> filtrerLongueur(List<String> chaines, int longueur) {
    return chaines.where((chaine) => chaine.length > longueur).toList();
  }
  print(filtrerLongueur(["chat", "lamine", "azert"], 4)); 

  // 36. Manipulation de Set
  void manipulationSet() {
    Set<int> nombres = {1, 2, 3, 4, 5};
    nombres.add(6);
    nombres.remove(2);
    print(nombres);
  }
  manipulationSet();

  // 37. Inversion de Chaîne
  String inverser(String chaine) {
    return chaine.split('').reversed.join('');
  }
  print(inverser("merci")); 

  // 38. Remplacement de Caractères
  String remplacer(String chaine, String aRemplacer, String remplacement) {
    return chaine.replaceAll(aRemplacer, remplacement);
  }
  print(remplacer("hello world", "o", "a")); 

  
  // 40. Validation d'Email
  bool validerEmail(String email) {
    RegExp regex = RegExp(r'^[^@]+@[^@]+\.[^@]+');
    return regex.hasMatch(email);
  }
  print(validerEmail("test@example.com")); 
  print(validerEmail("invalid-email")); 
}

