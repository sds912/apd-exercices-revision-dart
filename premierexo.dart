import 'dart:math';
void main() async{
    // Variables en dart
    // 2.Déclaration de Variables
     // Declarez une variable nom de type string
    //String nom = "Maya";
    //print(nom);
    // Declarez une variable age de type int et assignez-lui votre age
     //int age = 20; 
     //print(age);
    //3 Type de variables
    // Declarez une variable pi de type double avec la valeur 3.14
    //double pi = 3.14;
    // Déclarez une variable isFlutterAwesome de type bool avec la valeur true
   // bool isFlutterAwesome = true;
   // print(pi);
   // print(isFlutterAwesome);
    // 4.Variables Finales et Constantes

   // Declarez une variable nomComplet comme final et assignez-lui votre nom complet
   //final String nomComplet = "Maya Danfakha";
   // Declarez une constante vitesseLumiere avec la valeur 299792458 (m/s)
   //const int vitesseLumiere = 299792458;
   //print(nomComplet);
   //print(vitesseLumiere);

   //Lists et Maps
   // 5 Utilisation des listes
   // Créez une liste nombres contenant les nombres de 1 à 5
   //List<int> nombres = [1, 2, 3, 4, 5];

   // Ajoutez le nombre 6 à la liste nombres
   //nombres.add(6);

   //6.	Utilisation des Maps
    // Map<String, dynamic> etudiant = {
    //'nom': 'Maya',
    //'age': 20,
    //'classe': 'APD'
   // };

    // Ajoutez une clé note avec une valeur de 85 à la map etudiant
   // etudiant['note'] = 85;
   // print(etudiant);

    // Fonctions
    // 7 Définition et appels fonctions
    //void bonjour(String nom) {
        //print("Bonjour, $nom!");
     //}
    // Appelez la fonction bonjour avec votre nom
     //bonjour("Maya");
    // 8 Fonctions avec Parametres et valeurs de retours
    //int addition(int a, int b) {

        //return a + b;
    //}
    // Appelez la fonction addition avec les nombres 5 et 7 et affichez le résultat
    //int resultat = addition(5, 10);
    //print("La somme est: $resultat");

    // Structure de controle
   // 9 Condition (if,else)
    //var nombre = -3;

    //if (nombre > 0) {
        //print("Le nombre est positif");
    //} 
    //else if (nombre < 0) {
        // print("Le nombre est négatif");
    //} 
    //else {
       // print("Le nombre est zéro");
    //}
    // 10 Boucles (for while )
    // Boucle for qui affiche les nombres de 1 à 10
    //for (int i = 1; i <= 10; i++) {
        //print(i);
    //}
    // Boucle while qui affiche les nombres de 10 à 1
    //int j = 10;
   // while (j > 0) {
       // print(j);
       // j--;
    //}

    //11.Gestion des Exceptions
    //double division(int a, int b) {
        //if (b == 0) {
        //throw Exception("Le dénominateur ne peut pas être zéro");
   // }
    //return a / b;
    //}
    //try {
    //double result = division(10 , 2);
        //print("Le résultat est: $result");
    //} catch (e) {
        //print("Erreur: $e");
    //}

    // Exercices Pratiques Supplémentaires 
    // 19 Calcul de factorielle
    //int factorielle(int n) {
    //if (n <= 1) {
        //return 1;
    //}
       // return n * factorielle(n - 1);
       // }

   // int resultat = factorielle(5);
       // print("La factorielle de 5 est: $resultat");
    // 20 Filtrage de liste
    //List<int> filtrerPairs(List<int> nombres) {
        //return nombres.where((nombre) => nombre % 2 == 0).toList();
    //}
    //List<int> nombres = [1, 2, 3, 4, 5, 6];
    //List<int> pairs = filtrerPairs(nombres);
    //print("Nombres pairs: $pairs");
    // 21 Concaténation des chaînes de caractéres
    //String concatener(String chaine1, String chaine2) {
       // return chaine1 + chaine2;
    //}

    //String res = concatener("Bonjour ", "tout le monde!");
        //print(res);
    //22 Recherche dans une liste
    //bool rechercher(List<String> liste, String recherche) {
       // return liste.contains(recherche);
    //}

    //List<String> liste = ["pomme", "banane", "cerise"];
    //bool trouve = rechercher(liste, "banane");
    //print("Trouvé: $trouve");
    // 23 Manipulation de Date et Heure
    
   // DateTime maintenant = DateTime.now();
    //DateTime plusSeptJours = maintenant.add(Duration(days: 7));

    //("Date et heure actuelles: $maintenant");
    //print("Date et heure dans 7 jours: $plusSeptJours");
    //24 Calcul de la moyenne 
    //double moyenne(List<int> nombre) {
    //int somme = nombre.reduce((a, b) => a + b);
    //return somme / nombre.length;
    //}

   //List<int> nombre = [1, 2, 3, 4, 5];
   //double moy = moyenne(nombre);
   //print("La moyenne est: $moy");
   // 25 Filtrage de map
   // Map<String, int> filtrerEtudiants(Map<String, int> etudiants) {
       // return etudiants..removeWhere((key, value) => value <= 70);
    //}

    //Map<String, int> etudiants = {
    //'Maya': 85,
    //'Adja': 65,
    //'Ami': 72
    //};
    //Map<String, int> bonsEtudiants = filtrerEtudiants(etudiants);
    //print("Étudiants avec des notes supérieures à 70: $bonsEtudiants");
    // 26 Tri de liste
    //List<int> trier(List<int> nombres) {
    //nombres.sort();
    //return nombres;
    //}

    //List<int> nbres = [5, 2, 9, 1, 5, 6];
   // List<int> nbresTries = trier(nbres);
    //print("Nombres triés: $nbresTries");
    // 27 Vérification de palindrome
   // bool estPalindrome(String chaine) {
   // String reverse = chaine.split('').reversed.join('');
    //return chaine == reverse;
    //}

    //bool result = estPalindrome("radar");
    //print("Est-ce un palindrome? $result");
    // 28  Génération de nombres aléatoires
    //Random random = Random();
    //for (int i = 0; i < 5; i++) {
    //print(random.nextInt(100) + 1);
    //}
    // 29 Conversion de températures 
    //double convertirEnFahrenheit(double celsius) {
    //return celsius * 9 / 5 + 32;
   // }

    //double fahrenheit = convertirEnFahrenheit(25);
    //print("25°C en Fahrenheit est: $fahrenheit");
    // 31 Statistique complexe
    //Map<String, double> statistiques(List<int> nombres) {
    //int min = nombres.reduce((a, b) => a < b ? a : b);
    //int max = nombres.reduce((a, b) => a > b ? a : b);
    //double moy = nombres.reduce((a, b) => a + b) / nombres.length;

    //return {
    //'min': min.toDouble(),
    //'max': max.toDouble(),
    //'moyenne': moy
    //};
    //}

  //List<int> n = [5, 2, 9, 1, 5, 6];
  //Map<String, double> stats = statistiques(n);
  //print("Statistiques: $stats");
  // 32 Supppression des doublons
  //List<int> supprimerDoublons(List<int> nombres) {
    //return nombres.toSet().toList();
    //}
  //List<int> nbre = [1, 2, 2, 3, 4, 4, 5];
  //List<int> sansDoublons = supprimerDoublons(nbre);
  //print("Liste sans doublons: $sansDoublons");
  // 33 Conversion de liste en map
   //Map<K, V> convertirEnMap<K, V>(List<K> cles, List<V> valeurs) {

    //return Map.fromIterables(cles, valeurs);
    //}
    //List<String> cles = ["a", "b", "c"];
    //List<int> valeurs = [1, 2, 3];
    //Map<String, int> map = convertirEnMap(cles, valeurs);
    //print("Map: $map");
    // 35 	Filtrage de Chaînes par Longueur
    //List<String> filtrerLongueur(List<String> chaines, int longueur) {

        //return chaines.where((chaine) => chaine.length > longueur).toList();
    //}
  //List<String> chaines = ["chat", "chien", "éléphant", "souris"];
  //List<String> results = filtrerLongueur(chaines, 4);
  //print("Chaînes filtrées: $results");
  // 36 Manipulation de Set
  
  // Set<int> nombrs = {1, 2, 3};
  // nombrs.add(4);
  // nombrs.remove(2);
  // print("Set final: $nombrs");
  // 37 Inversion de Chaîne
    // String inverser(String chaine) {

    // return chaine.split('').reversed.join('');
    //}
    //String inversed = inverser("Bonjour");
       // print("Chaîne inversée: $inversed");
  // 38 Remplacement de Caractères
    //String remplacer(String chaine, String ancien, String nouveau) {
        //return chaine.replaceAll(ancien, nouveau);
   // }

    //String resu = remplacer("Bonjour tout le monde", "o", "a");
       // print("Chaîne modifiée: $resu");
    // 40 Validation d'Email
    //bool validerEmail(String email) {
    //String pattern = r'^[^@]+@[^@]+\.[^@]+';
    //RegExp regex = RegExp(pattern);
       // return regex.hasMatch(email);
    //}

    //bool valide = validerEmail("test@example.com");
       // print("Email valide: $valide");
    // 12.	Déclaration de Classes et Objets

     //Personne personne1 = Personne('Maya', 10);
     //print('Nom: ${personne1.nom}, Âge: ${personne1.age}');
     // 13  Heritage et polimorphisme
    //Etudiant etudiant1 = Etudiant('Maya', 20, 'Flutter');
     //print('Nom: ${etudiant1.nom}, Âge: ${etudiant1.age}, Classe: ${etudiant1.classe}');

     // 14 Getters et Setters
     //Personne personne1 = Personne('Maya', 18);
     //personne1.nom = 'Adja';
     //personne1.age = 18;
     //print('Nom: ${personne1.nom}, Âge: ${personne1.age}');
     // 16  Concepts d’asynchrone en Dart
   // print(await fetchData());
   // 17  Utilisation de async et await
   //print(await fetchData());
   // 30  Classe Complexe
    //var c1 = Complexe(2, 3);
    //var c2 = Complexe(1, 4);
    //print(c1 + c2);
    //print(c1 * c2);
    // 34 Classe pour Gestion de Banque
    //var compte = CompteBancaire();
    //compte.deposer(100);
    //compte.retirer(50);
    //print(compte.solde);
    //compte.retirer(100);
    // 39 
    var livre = Livre('Une si longue lettre', 'Mariama Ba',275);
    livre.afficherInformations();

    
}


//class Personne {
  //String nom;
  //int age;
  //Personne(this.nom, this.age);
//}
//class Etudiant extends Personne {
  //String classe;

  //Etudiant(String nom, int age, this.classe) : super(nom, age);
//}
//class Personne {
  //String _nom;
  //int _age;

  //Personne(this._nom, this._age);

  //String get nom => _nom;
  //set nom(String nom) => _nom = nom;

  //int get age => _age;
  //set age(int age) => _age = age;
//}
//Future<String> fetchData() {
  //return Future.delayed(Duration(seconds: 2), () => 'Données reçues');
//}
//Future<String> fetchData() async {
  //await Future.delayed(Duration(seconds: 2));
  //return 'Données reçues';
//}
//class Complexe {
  //double re, im;

 // Complexe(this.re, this.im);

 // Complexe operator +(Complexe autre) {
   // return Complexe(re + autre.re, im + autre.im);
  //}

  //Complexe operator *(Complexe autre) {
   // return Complexe(re * autre.re - im * autre.im, re * autre.im + im * autre.re);
  //}

  //@override
 // String toString() => '($re, $im)';
//}
  
//class CompteBancaire {
  //double _solde = 0;

  //void deposer(double montant) {
    //_solde += montant;
  //}

  //void retirer(double montant) {
    //if (_solde >= montant) {
    //  _solde -= montant;
    //} else {
     // print('Solde insuffisant');
   // }
 // }

 // double get solde => _solde;
//}
class Livre {
  String titre;
  String auteur;
  int nombrePages;

  Livre(this.titre, this.auteur, this.nombrePages);

  void afficherInformations() {
    print('Titre: $titre, Auteur: $auteur, Nombre de pages: $nombrePages');
  }
}













    

























    








    
    
  


