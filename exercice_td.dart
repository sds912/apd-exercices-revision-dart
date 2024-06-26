import 'dart:io';
import 'calcule.dart';
import 'dart:async';
import 'dart:math'; 
void main(){
  // 2.Déclaration de Variables
    String nom = "Maimouna"; // declaration et affectation du variable nom
    print(nom); // affichage du variable nom
    
    int age = 18; // declaration et affectation du variable age
    print(age);  // affichage du variable age

  // 3.Types de Variables
    double pi = 3.14;  //Déclarez une variable pi de type double avec la valeur 3.14
    print(pi); // Affichage de pi

    var a = carre(5);
    print(a);
  // 4.Variables Finales et Constantes
    final nomComplet = 'Maimouna Sow'; // Déclarez une variable nomComplet comme final et assignez-lui votre nom complet
    print(nomComplet);

    const vitesseLumiere = 299792458; // Déclarez une constante vitesseLumiere avec la valeur 299792458 (m/s)
      print(vitesseLumiere); // affichage de vitesseLumiere

  //Lists et Maps
  // 5.	Utilisation des Listes
    var nombres = ['1', '2', '3', '4','5']; //  List<int> nombres = [1, 2, 3, 4, 5];
    print(nombres);  // Affichage de la liste

    nombres.add('6'); // Ajoutez le nombre 6 à la liste
    print(nombres); // affichage du liste apres ajout
  // Utilisation des Maps
    Map etudiant = {'name':'Fatima','age':18,'classe':'seconde'};//Créez une map etudiant avec les clés nom, age, et classe et leurs valeurs respectives
    print(etudiant); // affichage map

    etudiant['note'] = 85; // Ajoutez la clé note avec la valeur 85
    print(etudiant); // affichage du map apres ajout
    
  //Fonctions
  // 7.	Définition et Appel de Fonctions
    void Bonjour(String nom){
      return Bonjour(nom);
    }
    print('Bonjour, $nom!');
  // 8.	Fonctions avec Paramètres et Valeurs de Retour
      //Écrivez une fonction addition qui prend deux nombres en paramètres et retourne leur somme
    int addition(int a,int b){
      return a+b;
    }
    int resultat = addition(5, 7);
      print(resultat);
  // Structrures de Controle
  // 9.	Conditions (if, else)
    void verifierNombre(nombre){
      if (nombre>0){
        print('Le nombre $nombre est positif.');
      }
      else if (nombre<0){
        print('Le nombre $nombre est négatif.');
      }
      else{
        print('Le nombre $nombre est zéro.');
      }
    }

    // 10.Boucles (for, while)
    //Boucle for pour afficher les nombres de 1 à 10
    for(var i=1; i<=10; i++){
      print(i);
    }
  var nombre = 10;
  while (nombre >= 1){
    print(nombre);
    nombre--;
  }
  // 11.Gestion des Exceptions
  void division(int a,int b){
    

  }

  // Classes
  // 12.Déclaration de Classes et Objets

  Personne personne1 = Personne(nom: 'Amadou', age: 15);
  print('Nom: ${personne1.nom}, Age: ${personne1.age}');  

  // 13.Héritage et Polymorphisme
  Etudiant etudiant1 = Etudiant(nom: '', age: 20, classe: '');

  // Affichage des valeurs des attributs de l'objet etudiant1
  print('Nom: ${etudiant1.nom}, Age: ${etudiant1.age}, Classe: ${etudiant1.classe}');


  // 14.Getters et Setters

  // Imports et Exports
  // 15.	Organisation du Code en Modules

  print("Le carre de 3 est égale à ${carre(2)}");
  
  // 18
  listeT();

  // 19
   print(factorielle(2)); 

  // exo20
  print("Filtrage de Liste");
  print(filtrerPairs([1, 2, 3, 4, 5, 6])); // [2, 4, 6]


  // exo21
  print("Concaténation de Chaînes");

  print(concatener('Bonjour, ', 'monde!'));
        

  // exo22
  print("Recherche dans une Liste");

  print(rechercher(['poisson', 'orange', 'oiseau'], 'chat'));
            

  // exo23
  print("Manipulation de Date et Heure");
  DateTime now = DateTime.now();

  print('Date et heure actuelles: $now');

  // exo24
  print("Calcul de la Moyenne");

  print(moyenne([1, 2, 3, 4, 5]));
          

  // exo26
  print("Trie de Liste");

  print(trier([5, 2, 9, 1, 5, 6]));
            

  // exo27
  print("Vérification de Palindrome");

  print(estPalindrome('matam'));

            

  // exo28
  print("Génération de Nombres Aléatoires");
  Random random = Random();
  for (int i = 0; i < 10; i++) {
    print(random.nextInt(100) + 1);
  }
          

  // exo29
  print("Conversion de Température");

  print(convertirEnFahrenheit(90));
          

  // exo33
  print("Suppression des Doublons");

  print(supprimerDoublons([1, 2, 2, 3, 4, 4, 5]));
            

  // exo34
  print("Classe pour Gestion de Banque");

  CompteBancaire compte = CompteBancaire(500);
  print("Solde debut = 500");
  compte.deposer(50);
  compte.retirer(30);
  print("Dépot = 50");
  print("Retiré = 30");
  print("Nouveau solde = ${compte.getSolde()}");
}

carre(int i) {
}

filtrerPairs(List<int> list) {
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

 
// 16
Future<String> fetchData() {
  return Future.delayed(Duration(seconds: 2), () => "Données recues");
}

// 18
void listeT() {
  Stream<int> stream =
      Stream.periodic(Duration(seconds: 1), (count) => count).take(5);
  stream.listen((value) {
    print(value);
  });
}

// 19
int factorielle(int n) {
  if (n <= 1) return 1;
  return n * factorielle(n - 1);
}



class Personne {
  String nom;
  int age;
  Personne({required this.nom, required this.age});
}

class Etudiant extends Personne {
  String classe;
  Etudiant({required String nom, required int age, required this.classe}) : super(nom: '', age: 0);
}