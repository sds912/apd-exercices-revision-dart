/*19.	Calcul de Factorielle
•	Écrivez une fonction récursive factorielle qui calcule la factorielle d'un nombre.*/
import 'dart:math';

int factorielle(int n) {
  if (n <= 1) {
    return 1;
  } else {
    return n * factorielle(n - 1);
  }
}

/*20.	Filtrage de Liste
•	Écrivez une fonction filtrerPairs qui prend une liste de nombres 
et retourne une nouvelle liste contenant uniquement les nombres pairs.*/
List<int> filtrerPairs(List<int> nombres) {
  List<int> nombresPairs = [];
  for (int nombre in nombres) {
    if (nombre % 2 == 0) {
      nombresPairs.add(nombre);
    }
  }
  return nombresPairs;
}

/*21.	Concaténation de Chaînes
•	Écrivez une fonction concatener qui prend deux chaînes de caractères et 
retourne leur concaténation.*/
String concatener(String a, String b) {
  return a + b;
}

/*22.	Recherche dans une Liste
•	Écrivez une fonction rechercher qui prend une liste de chaînes de 
caractères et une chaîne de recherche, et retourne true si la chaîne de 
recherche est trouvée dans la liste, sinon false.*/
bool rechercher(List<String> liste, String recherche) {
  return liste.contains(recherche);
}

/*24.	Calcul de la Moyenne
•	Écrivez une fonction moyenne qui prend une liste de nombres et retourne leur moyenne.*/
double moyennelistes(List<int> listnombres) {
  int somme = 0;
  for (int nombre in listnombres) {
    somme += nombre;
  }
  return somme / listnombres.length;
}

/*25.	Filtrage de Map
•	Écrivez une fonction filtrerEtudiants qui prend une map d'étudiants
(clé: nom, valeur: note) et retourne une nouvelle map contenant uniquement les 
étudiants ayant une note supérieure à 70.*/

Map<String, double> filtrerEtudiants(Map<String, double> etudiants) {
  Map<String, double> etudiantsFiltres = {};
  etudiants.forEach((nom, note) {
    if (note > 70) {
      etudiantsFiltres[nom] = note;
    }
  });
  return etudiantsFiltres;
}

/*26.	Trie de Liste
•	Écrivez une fonction trier qui prend une liste de nombres et retourne la liste triée en ordre croissant.*/
List<int> trier(List<int> listenombre){
  List<int> nombrelistTrier=[];
  nombrelistTrier=List.from(listenombre);
  nombrelistTrier.sort();
  return nombrelistTrier;
}


  /*27.	Vérification de Palindrome
•	Écrivez une fonction estPalindrome qui prend une chaîne de caractères et retourne true 
si la chaîne est un palindrome, sinon false.*/
bool estPalindrome(String a){
  // Inverser la chaîne
  String b = a.split('').reversed.join('');
  
  // Comparer la chaîne d'origine avec la chaîne inversée
  return a == b;
}


    /*29.	Conversion de Température
  •	Écrivez une fonction convertirEnFahrenheit qui prend une température en Celsius 
  et retourne la température correspondante en Fahrenheit.*/
  //Fahrenheit=(Celsius×5/9​)+32
double convertirEnFahrenheit(double Celsius){
  double result=(Celsius*9/3)+32;
  return result;
}




void main() {
  // 19.Test de la fonction factorielle
  int nombre = 5;
  int resultatFactorielle = factorielle(nombre);
  print('La factorielle de $nombre est $resultatFactorielle');

  // 20.Test de la fonction filtrerPairs
  List<int> nombres = [1, 2, 3, 5, 6, 8, 4];
  List<int> nombresPairs = filtrerPairs(nombres);
  print('Les nombres pairs sont: $nombresPairs');

  // 21. Test de la fonction concatener
  String resultatConcat = concatener('Coucou', ' Fifi');
  print('Résultat de la concaténation: $resultatConcat');

  // 22. Test de la fonction rechercher
  List<String> listes = ['pomme', 'banana', 'orange', 'mangue', 'maad'];
  String recherche1 = 'maad';
  String recherche2 = 'fraise';

  bool resultat1 = rechercher(listes, recherche1);
  bool resultat2 = rechercher(listes, recherche2);

  print('La chaîne "$recherche1" est-elle présente dans la liste ? $resultat1');
  print('La chaîne "$recherche2" est-elle présente dans la liste ? $resultat2');

  // 23. Manipulation de Date et Heure
  DateTime maintenant = DateTime.now();
  print("L'heure actuelle est: $maintenant");
  DateTime dans7jours = maintenant.add(Duration(days: 7));
  print("L'heure dans 7 jours est: $dans7jours");

  // 24. Calcul de la Moyenne
  List<int> listess = [1, 2, 3, 5, 6, 8, 4];
  double moyenneListe = moyennelistes(listess);
  print('La moyenne de la liste est : $moyenneListe');

  /*25.	Filtrage de Map
  •	Écrivez une fonction filtrerEtudiants qui prend une map d'étudiants
  (clé: nom, valeur: note) et retourne une nouvelle map contenant uniquement les 
  étudiants ayant une note supérieure à 70.*/
   // Exemple de map d'étudiants (nom: note)
  Map<String, double> etudiants = {
    'Astou': 85,
    'Aziz': 60,
    'Charlie': 75,
    'Coumba': 70.1,
    'Fatou': 69,
    'Momo': 90,
  };

  // Filtrer les étudiants selon leurs notes
  Map<String, double> etudiantsFiltres = filtrerEtudiants(etudiants);

  // Afficher les étudiants filtrés
  print('Étudiants ayant une note supérieure à 70 :');
  etudiantsFiltres.forEach((nom, note) {
    print('$nom : $note');
  });


  //26.	Trie de Liste
  List<int> nbrelist;
  List<int> nombresTries;
  nbrelist=[5,8,1,3,6,9,7];
  nombresTries =trier(nbrelist);
  print(nombresTries);


  /*27.	Vérification de Palindrome*/
  String palin1 = "radar";
  String palin2 = "hello";
  print(estPalindrome(palin1));
  print(estPalindrome(palin2));


  /*28.	Génération de Nombres Aléatoires
•	Écrivez un programme qui génère et affiche 5 nombres aléatoires compris entre 1 et 100.*/
//utilisation la classe Random de la bibliothèque dart:math
  Random random = Random();  // Créer une instance de la classe Random

  for(int i=0;i<5;i++){
    int generer = random.nextInt(100)+1; // nextInt(100) génère un nombre entre 0 et 99, donc on ajoute 1
    print(generer);
  }


  //29.	Conversion de Température
  double cels1= 37;
  double cels2 = 50;
  print('37°C en Fahrenheit est ${convertirEnFahrenheit(cels1)}°F');
  print('50°C en Fahrenheit est ${convertirEnFahrenheit(cels2)}°F');

}
