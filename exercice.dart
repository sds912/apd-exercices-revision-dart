import 'dart:io';
import 'calculs.dart';
import 'dart:async';
import 'dart:math';

void main() {
  print("Choisissez un exercice entre 1 et 40 : ");

  String? input = stdin.readLineSync();

  if (input != null) {
    try {
      int choix = int.parse(input);

      switch (choix) {
        // Exercice 1
        case 1:
          print("Déclaration de variable");

          String nom = "Sy";
          int age = 20;

          // Affichage
          print("nom = $nom et age = $age");
          break;

        // Exercice 2
        case 2:
          print("Type de variable");

          double pi = 3.14;
          bool isFlutterAnswer = true;

          // Affiche des types
          print(
              "Type de pi = ${pi.runtimeType} et type de isFlutterAnswer = ${isFlutterAnswer.runtimeType}");
          break;

        // Exercice 3
        case 3:
          print("Variable Finales et Constantes");

          final nomComplet = "Youssoupha Sy";
          const vitesselumiere = 299792458;

          // Affichage
          print("nomComplet = $nomComplet et vitesselumiere = $vitesselumiere");
          break;

        // Exercice 4
        case 4:
          print("Utilisation des Listes");

          List<int> nombre = [1, 2, 3, 4, 5];
          print("List = $nombre");

          //ajout du nombre 6
          nombre.add(6);
          print("nouvelle List  = $nombre");
          break;

        // Exercice 5
        case 5:
          print("Utilisation des Maps");

          var etudiant = {
            "nom": "Fatou",
            "age": 20,
            "classe": "Terminal",
          };

          print("etudiant = $etudiant");

          // ajouter une clé
          etudiant["note"] = 85;
          print("etudiant apres ajout de son note = $etudiant");
          break;

        // Exercice 6
        // fonction
        case 6:
          print("Definition et appel de fonction");

          Bonjour(nom) {
            print("Bonjour, $nom");
          }

          // Appel de la fonction
          Bonjour("Youssoupha Sy");
          break;

        // Exercice 7
        case 7:
          print("Fonctions avec paramettre et Valeurs de return");

          addition(int a, int b) {
            return a + b;
          }

          // Appel de la fonction

          print("7 + 5 = ${addition(7, 5)}");
          break;

        // Exercice 8
        case 8:
          print("Condition if et else");

          print("Entrer un nombre: ");
          String? input = stdin.readLineSync();

          if (input != null) {
            int number = int.parse(input);

            if (number > 0) {
              print("$number est positif");
            } else if (number < 0) {
              print("$number est negatif");
            } else {
              print("$number est egal a 0");
            }
          }
          break;

        // Exercice 9
        case 9:
          print("Boucle for");
          for (var i = 0; i <= 10; i++) {
            print("i = $i");
          }
          break;

        case 10:
          print("Boucle while");
          var i = 10;
          while (i >= 1) {
            print("i = $i");
            i--;
          }
          break;

        // Exercice 10
        case 11:
          print("Gestion des Exceptions");

          division(int a, int b) {
            try {
              var resultat = a ~/ b;
              return resultat;
            } catch (e) {
              print("On ne divise pas par 0 !");
            }
          }

          // Appel de la fonction
          print("${division(7, 0)}");
          break;
        // Exercice 12
        case 12:
          print("Déclaration de classe et Objets");

          // Creation objet
          Personne personne1 = new Personne("Fall", 16);

          // Affichage
          print("Personne1 = ${personne1.nom} et ${personne1.age}");
          break;

        // Exercice 13
        case 13:
          print("Héritage et polymorphisme ");

          // Creation objet
          Etudiant etudiant1 = new Etudiant("Fall", 16, "APD");

          // Affichage
          print(
              "etudiant1 = ${etudiant1.nom} et ${etudiant1.age} et ${etudiant1.classe}");
          break;

        // Exercice 13
        case 14:
          print("Getters et Setters");
          Personne personne1 = new Personne("Fall", 16);

          personne1.nom = "Sow";
          personne1.age = 20;

          print(
              "Nom modifié = ${personne1.nom} et age modifié = ${personne1.age}");
          break;

        // Exercice 15
        case 15:
          print("Utulisation de la fonction carrée du fichier calculs.dart");

          print("Le carre de 2 est égale à ${carre(2)}");
          break;

        // Exercice 16
        case 16:
          print("Concepts d asychrone");

          break;
        // Exercice 17
        case 17:
          print("Utilisation de async et await");
          break;

        // Exercice 18
        case 18:
          print("Gestion des Futures et des Streams");

          listeT();
          break;

        case 19:
          print("Calcul de Factorielle");
          print(factorielle(5)); // 120
          break;

        case 20:
          print("Filtrage de Liste");
          print(filtrerPairs([1, 2, 3, 4, 5, 6])); // [2, 4, 6]
          break;

        case 21:
          print("Concaténation de Chaînes");

          print(concatener('Bonjour, ', 'monde!'));
          break;

        case 22:
          print("Recherche dans une Liste");

          print(rechercher(['chat', 'chien', 'oiseau'], 'chien'));
          break;

        case 23:
          print("Manipulation de Date et Heure");
          DateTime now = DateTime.now();
          DateTime future = now.add(Duration(days: 7));

          print('Date et heure actuelles: $now');
          print('Date et heure dans 7 jours: $future');

          break;

        case 24:
          print("Calcul de la Moyenne");

          print(moyenne([1, 2, 3, 4, 5]));
          break;

        case 26:
          print("Trie de Liste");

          print(trier([5, 2, 9, 1, 5, 6]));
          break;

        case 27:
          print("Vérification de Palindrome");

          print(estPalindrome('radar'));
          print(estPalindrome('hello'));
          break;

        case 28:
          print("Génération de Nombres Aléatoires");
          Random random = Random();
          for (int i = 0; i < 5; i++) {
            print(random.nextInt(100) + 1);
          }
          break;

        case 29:
          print("Conversion de Température");

          print(convertirEnFahrenheit(30));
          break;

        case 33:
          print("Suppression des Doublons");

          print(supprimerDoublons([1, 2, 2, 3, 4, 4, 5]));
          break;

        case 34:
          print("Classe pour Gestion de Banque");

          CompteBancaire compte = CompteBancaire(100);
          print("Solde = 100");
          compte.deposer(50);
          compte.retirer(30);
          print("Dépot = 50");
          print("Retiré = 30");
          print("Nouveau solde = ${compte.getSolde()}");
          break;
      }
    } catch (e) {
      print("Entrer invalide ! Choississez entre 1 et 40");
    }
  }
}

// Exercice 12
class Personne {
  String nom;
  int age;

  Personne(this.nom, this.age);

  // getters
  String get _nom => nom;
  set _nom(String value) => nom = value;

  int get _age => age;
  set _age(int value) => _age = value;
}

// Exercice 13
class Etudiant extends Personne {
  String classe;

  Etudiant(String nom, int age, this.classe) : super(nom, age);
}

// Exercice 16
Future<String> fetchData() {
  return Future.delayed(Duration(seconds: 2), () => "Données recues");
}

// Exercice 18
void listeT() {
  Stream<int> stream =
      Stream.periodic(Duration(seconds: 1), (count) => count).take(5);
  stream.listen((value) {
    print(value);
  });
}

// Exercice 19
int factorielle(int n) {
  if (n <= 1) return 1;
  return n * factorielle(n - 1);
}

// Exercice 20
List<int> filtrerPairs(List<int> nombres) {
  return nombres.where((nombre) => nombre % 2 == 0).toList();
}

// Exercice 21
String concatener(String str1, String str2) {
  return '$str1$str2';
}

// Exercice 22
bool rechercher(List<String> liste, String recherche) {
  return liste.contains(recherche);
}

// Exercice 24
double moyenne(List<int> nombres) {
  if (nombres.isEmpty) return 0;
  int somme = nombres.reduce((a, b) => a + b);
  return somme / nombres.length;
}

// Exercice 26
List<int> trier(List<int> nombres) {
  nombres.sort();
  return nombres;
}

// Exercice 27
bool estPalindrome(String chaine) {
  String reversed = chaine.split('').reversed.join('');
  return chaine == reversed;
}

// Exercice 29
double convertirEnFahrenheit(double celsius) {
  return celsius * 9 / 5 + 32;
}

// Exercice 33
List<T> supprimerDoublons<T>(List<T> liste) {
  return liste.toSet().toList();
}

// Exercice 34
class CompteBancaire {
  double solde;

  CompteBancaire(this.solde);

  void deposer(double montant) {
    solde += montant;
  }

  void retirer(double montant) {
    if (montant <= solde) {
      solde -= montant;
    } else {
      print('Fonds insuffisants');
    }
  }

  double getSolde() {
    return solde;
  }
}
