

// 19 calcule factorielle
// ignore_for_file: unused_element, unused_local_variable

import 'dart:math';

void main() {
int factorielle(int n) {
 if (n == 0) {
     return 1;
 } else {
     return n * factorielle(n - 1);
 }
}

void main() {
 int nombre = 5;
 int resultat = factorielle(nombre);
 print("Le factoriel de $nombre est $resultat");
}

//	20 Filtrage de Liste

List filtreParis(List nombres) {
 List nombresPairs = [];
 
 for (int nombre in nombres) {
     if (nombre % 2 == 0) {
         nombresPairs.add(nombre);
     }
 }
 
  return nombresPairs;
}

//	21 Concaténation de Chaînes
String concatenerChaines(String chaine1, String chaine2) {
 return chaine1 + chaine2;
}


 String chaine1 = "Bonjour ";
 String chaine2 = "le monde!";
 
 String resultat = concatenerChaines(chaine1, chaine2);
 
 print(resultat); // Affiche "Bonjour le monde!"

 // 22 Recherche dans une Liste
 bool rechercher(List liste, String recherche) {
 for (String element in liste) {
     if (element.contains(recherche)) {
         return true;
     }
 }
 return false;
}


 List liste = ['bonjour', 'salut', 'hello', 'hi'];
 String recherche = 'salut';
 
 if (rechercher(liste, recherche)) {
     print('La chaîne de recherche a été trouvée dans la liste.');
 } else {
     print('La chaîne de recherche n\'a pas été trouvée dans la liste.');
 }

 //	25 Filtrage de Map

 Map filtrerEtudiants(Map etudiants) {
 Map etudiantsFiltres = {};

 etudiants.forEach((nom, note) {
     if (note > 70) {
         etudiantsFiltres[nom] = note;
     }
 });

 return etudiantsFiltres;
}

// 26.	Trie de Liste
List trier(List liste) {
 liste.sort();
 return liste;
}
 List nombres = [5, 2, 8, 1, 3];
 List nombresTries = trier(nombres);

 print(nombresTries); // Affiche [1, 2, 3, 5, 8]

// 27.	Vérification de Palindrome
bool estPalindrome(String chaine) {
 String chaineInverse = chaine.split('').reversed.join();
 
 return chaine == chaineInverse;
}
 print(estPalindrome(chaine1)); // true
 print(estPalindrome(chaine2)); // false


 //	28 Génération de Nombres Aléatoires
  var import; 'dart:math';


 Random random = Random();
 
 for (int i = 0; i < 5; i++) {
     int randomNumber = random.nextInt(100) + 1;
     print(randomNumber);
 }

// 	29 Conversion de Température
double convertirEnFahrenheit(double temperatureCelsius) {
 double temperatureFahrenheit = (temperatureCelsius * 9/5) + 32;
 return temperatureFahrenheit;
}


 double temperatureCelsius = 25.0;
 double temperatureFahrenheit = convertirEnFahrenheit(temperatureCelsius);
 print('$temperatureCelsius degrés Celsius équivaut à $temperatureFahrenheit degrés Fahrenheit.');




}

