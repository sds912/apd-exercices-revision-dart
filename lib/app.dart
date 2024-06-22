import 'calculs.dart'; // Import du fichier calculs.dart

void main() {
  // Déclaration de Variables
  String nom = 'Diop'; // Remplacez 'Diop' par votre nom
  int age = 25;

  // Types de Variables
  double pi = 3.14;
  bool isFlutterAwesome = true;

  // Variables Finales et Constantes
  final String nomComplet = 'Aicha Diop'; // Remplacez par votre nom complet
  const int vitesseLumiere = 299792458; // m/s

  // Utilisation des Listes
  List<int> nombres = [1, 2, 3, 4, 5];
  nombres.add(6);

  // Utilisation des Maps
  Map<String, dynamic> etudiant = {
    'nom': nom,
    'age': age,
    'classe': 'APD1',
  };
  etudiant['note'] = 85;

  // Affichage des résultats
  print('Nom: $nom');
  print('Âge: $age');
  print('Pi: $pi');
  print('Flutter est génial: $isFlutterAwesome');
  print('Nom Complet: $nomComplet');
  print('Vitesse de la lumière: $vitesseLumiere m/s');
  print('Liste de nombres: $nombres');
  print('Détails de l\'étudiant: $etudiant');

 // Appel des fonctions
  bonjour('Diop'); // Remplacez 'Diop' par votre nom
  print('Addition de 5 et 7: ${addition(5, 7)}');

  // Conditions
  verifierNombre(5);
  verifierNombre(-3);
  verifierNombre(0);

  // Boucles
  afficherNombresFor();
  afficherNombresWhile();

  // Gestion des Exceptions
  try {
    print('Division de 10 par 2: ${division(10, 2)}');
    print('Division de 10 par 0: ${division(10, 0)}');
  } catch (e) {
    print(e);
  }

  // Classes et Objets
  Personne personne1 = Personne('Diop', 25); // Remplacez par vos informations
  print('Nom de personne1: ${personne1.nom}');
  print('Âge de personne1: ${personne1.age}');

  Etudiant etudiant1 = Etudiant('Diop', 25, 'APD1'); // Remplacez par vos informations
  print('Nom de etudiant1: ${etudiant1.nom}');
  print('Âge de etudiant1: ${etudiant1.age}');
  print('Classe de etudiant1: ${etudiant1.classe}');

  // Getters et Setters
  personne1.nom = 'NouveauNom'; // Remplacez par un nouveau nom
  print('Nouveau Nom de personne1: ${personne1.nom}');

  // Utilisation du fichier importé
  print('Carré de 4: ${carre(4)}');

  // Appel de la fonction asynchrone
  fetchData().then((data) {
    print(data);
  });

  // Utilisation de async et await
  await mainAsync();

  // Utilisation de Stream
  ecouterStream();

  // Exercices Pratiques Supplémentaires
  print('Factorielle de 5: ${factorielle(5)}');
  List<int> listeNombres = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  print('Nombres pairs: ${filtrerPairs(listeNombres)}');
  
// Fonctions

// 7. Définition et Appel de Fonctions
void bonjour(String nom) {
  print('Bonjour, $nom!');
}

// 8. Fonctions avec Paramètres et Valeurs de Retour
int addition(int a, int b) {
  return a + b;
}

// 9. Conditions (if, else)
void verifierNombre(int nombre) {
  if (nombre > 0) {
    print('$nombre est positif');
  } else if (nombre < 0) {
    print('$nombre est négatif');
  } else {
    print('$nombre est zéro');
  }
}

// 10. Boucles (for, while)
void afficherNombresFor() {
  for (int i = 1; i <= 10; i++) {
    print(i);
  }
}

void afficherNombresWhile() {
  int i = 10;
  while (i > 0) {
    print(i);
    i--;
  }
}

// 11. Gestion des Exceptions
double division(int a, int b) {
  if (b == 0) {
    throw Exception('Division par zéro!');
  }
  return a / b;
}

// 12. Déclaration de Classes et Objets
class Personne {
  String _nom;
  int _age;

  Personne(this._nom, this._age);

  // 14. Getters et Setters
  String get nom => _nom;
  set nom(String value) => _nom = value;

  int get age => _age;
  set age(int value) => _age = value;
}

// 13. Héritage et Polymorphisme
class Etudiant extends Personne {
  String classe;

  Etudiant(String nom, int age, this.classe) : super(nom, age);
}

// 16. Concepts d’asynchrone en Dart
Future<String> fetchData() async {
  await Future.delayed(Duration(seconds: 2));
  return 'Données reçues';
}

// 17. Utilisation de async et await
Future<void> mainAsync() async {
  String data = await fetchData();
  print(data);
// 15. Organisation du Code en Modules
int carre(int nombre) {
  return nombre * nombre;
  // 21. Concaténation de Chaînes
  print(concatener("Hello", "World"));

  // 22. Recherche dans une Liste
  List<String> liste = ["apple", "banana", "orange"];
  print(rechercher(liste, "banana"));
  print(rechercher(liste, "grape"));

  // 23. Manipulation de Date et Heure
  afficherDateEtHeure();

  // 24. Calcul de la Moyenne
  List<int> nombresMoyenne = [10, 20, 30, 40, 50];
  print(moyenne(nombresMoyenne));

  // 25. Filtrage de Map
  Map<String, int> etudiants = {
    "Alice": 85,
    "Bob": 65,
    "Charlie": 75,
    "Dave": 90
  };
  print(filtrerEtudiants(etudiants));

  // 26. Trie de Liste
  List<int> listeNombresTrie = [5, 3, 8, 1, 2];
  print(trier(listeNombresTrie));

  // 27. Vérification de Palindrome
  print(estPalindrome("radar"));
  print(estPalindrome("hello"));

  // 28. Génération de Nombres Aléatoires
  genererNombresAleatoires();

  // 29. Conversion de Température
  print(convertirEnFahrenheit(25));

  // 30. Classe Complexe
  Complexe c1 = Complexe(1, 2);
  Complexe c2 = Complexe(3, 4);
  Complexe somme = c1 + c2;
  Complexe produit = c1 * c2;
  print('Somme: $somme');
  print('Produit: $produit');

  // 31. Statistiques de Liste
  print(statistiques([1, 2, 3, 4, 5]));

  // 32. Suppression des Doublons
  print(supprimerDoublons([1, 2, 2, 3, 4, 4, 5]));

  // 33. Conversion de Listes en Map
  List<String> cles = ["name", "age", "city"];
  List<dynamic> valeurs = ["Alice", 25, "Paris"];
  print(convertirEnMap(cles, valeurs));

  // 34. Classe pour Gestion de Banque
  CompteBancaire compte = CompteBancaire(1000);
  compte.deposer(500);
  compte.retirer(200);
  print('Solde: ${compte.solde}');

  // 35. Filtrage de Chaînes par Longueur
  List<String> chaines = ["apple", "banana", "cherry", "date"];
  print(filtrerLongueur(chaines, 5));

  // 36. Manipulation de Set
  manipulerSet();

  // 37. Inversion de Chaîne
  print(inverser("hello"));

  // 38. Remplacement de Caractères
  print(remplacer("hello world", 'o', 'a'));

  // 39. Classe pour Gestion de Livres
  Livre livre = Livre("1984", "George Orwell", 328);
  livre.afficherInfos();

  // 40. Validation d'Email
  print(validerEmail("test@example.com"));
  print(validerEmail("invalid-email"));
}
}}
