Text main() {

 // 1) Déclaration de la variable 
         //variable nom
  String nom = "Dabista";
  print("Nom: $nom");
        //variable age
  int age = 24;
print(age);
 // 2) type de variable
       // variable pi
 double pi = 3.14;
 print(pi);
// 3) variable isFlutterAwesome de type bool avec la valeur true.
 bool isFlutterAwesome = true;
 print(isFlutterAwesome);
 // 4) 4. Variables Finales et Constantes
   //variable nomComplet comme final 
     final String nomComplet = "Daba faye";
     print(nomComplet);
     // Déclarez une constante vitesseLumiere avec la valeur 299792458 (m/s).
     const int vitesseLumiere = 299792458;
  print("La vitesse de la lumière est de $vitesseLumiere m/s");
  // 5) Utilisation des Listes
       // Créez une liste nombres contenant les nombres de 1 à 5.
       List<int> nombres = [1, 2, 3, 4, 5];
  print("La liste des nombres est : $nombres");
      // Ajoutez le nombre 6 à la liste nombres.
       nombres.add(6);
  print("La liste des nombres est maintenant : $nombres");
// 6) Utilisation des Maps
       //Créez une map etudiant avec les clés nom, age, et classe et leurs valeurs respectives.
       Map<String, dynamic> etudiant = {
    'nom': 'Barro',
    'age': 22,
    'classe': 'S2'
  };
  print("Étudiant : $etudiant");
  //  Ajoutez une clé note avec une valeur de 85 à la map etudiant.
  etudiant['note'] = 85;
  print("Étudiant : $etudiant");

  //FONCTIONS
 // 7) Définition et Appel de Fonctions
      //Écrivez une fonction bonjour qui prend un nom en paramètre et affiche "Bonjour, [nom]!".
    String bonjour(String nom) {
  return "Bonjour, $nom!";
}

void main() {
  // Appel de la fonction bonjour avec le nom  et affichage du résultat
  print(bonjour("Dabista"));

}
// 8) Fonctions avec Paramètres et Valeurs de Retour
     // Écrivez une fonction addition qui prend deux nombres en paramètres et retourne leur somme.
      int addition(int a, int b) {
  return a + b;
}

// ignore: unused_element
// 9) Appelez la fonction addition avec les nombres 5 et 7 et affichez le résultat.
         int result = addition(5, 7); 
    return Text('La somme de 5 et 7 est: $result');
  }
  
  class Text {
  Text(String s);
  }

  // Définition de la fonction addition
  int addition(int a, int b) {
    return a + b;

     // 10) Conditions (if, else)
      // Écrivez un programme qui vérifie si un nombre donné est positif, négatif ou zéro et affiche un message correspondant.
      
       
  }// 11. Gestion des Exceptions
  double division(int a, int b) {
    if (b == 0) {
      throw Exception('Le dénominateur ne peut pas être zéro.');
    }
    return a / b;
  }

  // Utilisation des classes définies plus bas
  Personne personne1 = Personne('VotreNom', 25); // Remplacez par votre nom et âge

  Etudiant etudiant1 = Etudiant('VotreNom', 25, 'VotreClasse'); // Remplacez par vos informations

  PersonneAvecGetSet personneAvecGetSet = PersonneAvecGetSet('VotreNom', 25); // Remplacez par votre nom et âge
  personneAvecGetSet.String nom = 'NouveauNom'; // Remplacez par le nouveau nom
  print(personneAvecGetSet.nom);

  // Imports et Exports
  // 15. Organisation du Code en Modules
  // Créez un fichier calculs.dart contenant une fonction carre qui calcule le carré d'un nombre.
  // Importez ce fichier dans un autre fichier main.dart et utilisez la fonction carre.

  // L’asynchrone
  // 16. Concepts d’asynchrone en Dart
  Future<String> fetchData() async {
    await Future.delayed(Duration(seconds: 2));
    return 'Données reçues';
  }
  fetchData().then((resultat) => print(resultat));

  // 17. Utilisation de async et await
  Future<void> mainAsync() async {
    String resultat = await fetchData();
    print(resultat);
  }
  mainAsync();

  // 18. Gestion des Futures et des Streams
  Stream<int> streamDeDonnees = Stream.periodic(Duration(seconds: 1), (computationCount) => computationCount);
  streamDeDonnees.take(5).listen((data) {
    print(data);
  });

  // Exercices Pratiques Supplémentaires
  // 19. Calcul de Factorielle
  int factorielle(int n) {
    if (n <= 1) return 1;
    return n * factorielle(n - 1);
  }
  print('Factorielle de 5 : ${factorielle(5)}');

  // 20. Filtrage de Liste
  List<int> filtrerPairs(List<int> nombres) {
    return nombres.where((nombre) => nombre % 2 == 0).toList();
  }
  print('Nombres pairs : ${filtrerPairs([1, 2, 3, 4, 5, 6])}');

  // 21. Concaténation de Chaînes
  String concatener(String chaine1, String chaine2) {
    return chaine1 + chaine2;
  }
  print('Concaténation : ${concatener('Bonjour, ', 'monde!')}');

  // 22. Recherche dans une Liste
  bool rechercher(List<String> liste, String recherche) {
    return liste.contains(recherche);
  }
  print('Recherche : ${rechercher(['dart', 'flutter', 'react'], 'flutter')}');

  // 23. Manipulation de Date et Heure
  DateTime maintenant = DateTime.now();
  DateTime plusTard = maintenant.add(Duration(days: 7));
  print('Date et heure actuelles : $maintenant');
  print('Date et heure dans 7 jours : $plusTard');

  // 24. Calcul de la Moyenne
  double moyenne(List<int> nombres) {
    int somme = nombres.reduce((a, b) => a + b);
    return somme / nombres.length;
  }
  print('Moyenne : ${moyenne([1, 2, 3, 4, 5])}');

  // 25. Filtrage de Map
  Map<String, int> filtrerEtudiants(Map<String, int> etudiants) {
    return etudiants..removeWhere((nom, note) => note <= 70);
  }
  print('Etudiants filtrés : ${filtrerEtudiants({'Alice': 85, 'Bob': 65, 'Charlie': 95})}');

  // 26. Trie de Liste
  List<int> trier(List<int> nombres) {
    nombres.sort();
    return nombres;
  }
  print('Liste triée : ${trier([5, 3, 8, 1, 2])}');


// Classes
// 12. Déclaration de Classes et Objets
class Personne {
  String nom;
  int age;
  
  Personne(this.nom, this.age);
}

// 13. Héritage et Polymorphisme
class Etudiant extends Personne {
  String classe;
  
  Etudiant(String nom, int age, this.classe) : super(nom, age);
}

// 14. Getters et Setters
class PersonneAvecGetSet {
  String _nom;
  int _age;

  PersonneAvecGetSet(this._nom, this._age);

  String get nom => _nom;
  set nom(String valeur) => _nom = valeur;

  int get age => _age;
  set age(int valeur) => _age = valeur;
}



