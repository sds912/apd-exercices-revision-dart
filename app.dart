import 'dart:io';
import 'dart:math';

void main() {
  String nom = "Faty djigo";
  int age = 25;

  double pi = 3.14;
  bool isFlutterAwesome = true;
  print(pi);

  // liste
  var listnombres = [1, 2, 3, 4, 5];
  var nombres = <int>[]; // initialisation de la liste
  nombres.add(6);

  // les maps
  var etudiant = {
    'nom': 'faty alassane djigo',
    'age': 21,
    'classe': 'APD',
  };
  etudiant['note'] = 85;

  // les fonctions
  void bonjour(String nom) {
    print("Bonjour, $nom!");
  }
  bonjour("Fatou");

  // la fonction addition
  int addition(int x, int y) {
    return x + y;
  }
  print(addition(5, 7));

  // Structure de controle
  //condition if et else
  void verifierNombre(int nombre) {
    if (nombre > 0) {
      print("Le nombre  saisi est positif");
    } else if (nombre < 0) {
      print("Le nombre saisi est négatif");
    } else {
      print("Le nombre saisi  est zéro");
    }
  }
  verifierNombre(5);

  // boucles for et while
  // Boucle for affichant les nombres de 1 à 10
  for (int i = 1; i <= 10; i++) {
    print(i);
  }

  // Boucle while affichant les nombres de 10 à 1
  int j = 10;
  while (j >= 1) {
    print(j);
    j--;
  }

  // Fonction division qui gère les cas où le dénominateur est zéro
  double division(double numerateur, double denominateur) {
    if (denominateur == 0) {
      throw Exception("Division par zéro impossible");
    }
    return numerateur / denominateur;
  }
  try {
    print(division(10, 2));
    print(division(10, 0));
  } catch (e) {
    print(e);
  }
// Fonction fetchData simulant une opération asynchrone
Future<String> fetchData() {
  return Future.delayed(Duration(seconds: 2), () {
    return "Données reçues";
  });
}

// Le fetchData et affichage du résultat
void afficherResultat() {
  fetchData().then((result) {
    print(result);
  });
}

// Appel de la fonction pour afficher le résultat
void main() {
  afficherResultat();
}


  // Fonction écoutant un stream de données en utilisant Stream.periodic
  void ecouterStream() {
    Stream<int> stream = Stream.periodic(Duration(seconds: 1), (index) => index);

    // Le stream
    stream.take(5).listen((data) {
      print(data);
    });
  }

  // Appel de la fonction écouterStream
  ecouterStream();
}

// Classe Personne
class Personne {
  String nom;
  int age;
  Personne(this.nom, this.age);
}

// Création d'un objet
Personne personne1 = Personne("Fatimata", 20);

// Classe Etudiant qui hérite de Personne et ajoute un attribut classe
class Etudiant extends Personne {
  String classe;
  Etudiant(String nom, int age, this.classe) : super(nom, age);
}
Etudiant etudiant1 = Etudiant("Haby", 20, "APD G2");

// Fonction récursive pour calculer la factorielle d'un nombre
int factorielle(int a) {
  if (a == 0) {
    return 1;
  } else {
    return a * factorielle(a - 1);
  }
}

// Fonction filtrant les nombres pairs dans une liste et retournant une nouvelle liste
List<int> filtrerPairs(List<int> nombres) {
  return nombres.where((nombre) => nombre % 2 == 0).toList();
}

// Fonction concaténant deux chaînes de caractères
String concatener(String chaine1, String chaine2) {
  return chaine1 + chaine2;
}

// Fonction recherchant une chaîne de caractères dans une liste et retournant true si elle est trouvée, sinon false
bool rechercher(List<String> liste, String recherche) {
  return liste.contains(recherche);
}

// Fonction affichant la date et l'heure actuelles, ainsi que celles dans 7 jours
void afficherDates() {
  DateTime maintenant = DateTime.now();
  print("La date et L'heure actuelle: $maintenant");
  DateTime dans7Jours = maintenant.add(Duration(days: 7));
  print("La date et L'heure dans 7 jours: $dans7Jours");
}

// Fonction calculant la moyenne d'une liste de nombres
double moyenne(List<num> nombres) {
  if (nombres.isEmpty) return 0;
  return nombres.reduce((a, b) => a + b) / nombres.length;
}

Map<String, int> filtrerEtudiants(Map<String, int> etudiants) {
  Map<String, int> etudiantsFiltres = {};
  etudiants.forEach((nom, note) {
    
    if (note > 70) {
      
      etudiantsFiltres[nom] = note;
    }
  });

  
  return etudiantsFiltres;
}

// Fonction triant une liste de nombres en ordre croissant
List<num> trier(List<num> nombres) {
  nombres.sort();
  return nombres;
}

// Fonction vérifiant si une chaîne de caractères est un palindrome
bool estPalindrome(String chaine) {
  return chaine == chaine.split('').reversed.join('');
}

// Fonction générant 5 nombres aléatoires compris entre 1 et 100
List<int> genererNombresAleatoires() {
  Random random = Random();
  return List.generate(5, (_) => random.nextInt(100) + 1);
}

// Fonction convertissant une température de Celsius en Fahrenheit
double convertirEnFahrenheit(double temperatureCelsius) {
  return (temperatureCelsius * 9 / 5) + 32;
}

// Classe représentant un nombre complexe avec des opérations d'addition et de multiplication
class Complexe {
  double reel;
  double imaginaire;

  Complexe(this.reel, this.imaginaire);

  // Méthode d'addition de deux nombres complexes
  Complexe additionner(Complexe autre) {
    return Complexe(this.reel + autre.reel, this.imaginaire + autre.imaginaire);
  }

  // Méthode de multiplication de deux nombres complexes
  Complexe multiplier(Complexe autre) {
    double reelResultat = this.reel * autre.reel - this.imaginaire * autre.imaginaire;
    double imaginaireResultat = this.reel * autre.imaginaire + this.imaginaire * autre.reel;
    return Complexe(reelResultat, imaginaireResultat);
  }
}

// Fonction calculant les statistiques (min, max, moyenne) d'une liste de nombres
Map<String, num> statistiques(List<num> nombres) {
  if (nombres.isEmpty) return {};

  num min = nombres.reduce((a, b) => a < b ? a : b);
  num max = nombres.reduce((a, b) => a > b ? a : b);
  num moyenne = nombres.reduce((a, b) => a + b) / nombres.length;

  return {'min': min, 'max': max, 'moyenne': moyenne};
}

// Fonction supprimant les doublons d'une liste
List<A> supprimerDoublons<A>(List<A> liste) {
  return liste.toSet().toList();
}

// Fonction convertissant deux listes en une map
Map<K, V> convertirEnMap<K, V>(List<K> cles, List<V> valeurs) {
  assert(cles.length == valeurs.length);
  return Map.fromIterables(cles, valeurs);
}

// Classe représentant un compte bancaire
class CompteBancaire {
  double solde = 0;

  // Méthode pour déposer de l'argent dans le compte
  void deposer(double montant) {
    solde += montant;
  }

  // Méthode pour retirer de l'argent du compte
  void retirer(double montant) {
    if (montant > solde) {
      print("erreur");
    } else {
      solde -= montant;
    }
  }

  // Méthode pour vérifier le solde du compte
  double verifierSolde() {
    return solde;
  }
}

// Fonction filtrant les chaînes d'une liste par leur longueur
List<String> filtrerLongueur(List<String> chaines, int n) {
  return chaines.where((chaine) => chaine.length > n).toList();
}



// Fonction inversant une chaîne de caractères
String inverser(String chaine) {
  return chaine.split('').reversed.join('');
}

// Fonction remplaçant un caractère dans une chaîne par un autre caractère
String remplacer(String chaine, String ancienCaractere, String nouveauCaractere) {
  return chaine.replaceAll(ancienCaractere, nouveauCaractere);
}

// Classe représentant un livre
class Livre {
  String titre;
  String auteur;
  int nombreDePages;

  Livre(this.titre, this.auteur, this.nombreDePages);

  // Méthode pour afficher les informations du livre
  void afficherInformations() {
    print("Titre: $titre");
    print("Auteur: $auteur");
    print("Nombre de pages: $nombreDePages");
  }
}

// Fonction validant un email
bool validerEmail(String email) {
  // Expression régulière pour valider un email
  RegExp regex = RegExp(r'');
  return regex.hasMatch(email);
}
