// ignore: unused_import
import 'dart:async';

// Fonction pour afficher la date et l'heure actuelles
void afficherDateHeureActuelles() {
  DateTime maintenant = DateTime.now();
  print("Date et heure actuelles : $maintenant");
}

// Fonction pour afficher la date et l'heure dans 7 jours
void afficherDateHeureDans7Jours() {
  DateTime maintenant = DateTime.now();
  DateTime dans7Jours = maintenant.add(Duration(days: 7));
  print("Date et heure dans 7 jours : $dans7Jours");
}

// Programme principal
void main() {
  afficherDateHeureActuelles();
  afficherDateHeureDans7Jours();
}

//Ce programme utilise la classe DateTime de Dart pour obtenir la date et l'heure actuelles à l'aide de DateTime.now(). 
//Ensuite, il ajoute 7 jours à la date actuelle à l'aide de add(Duration(days: 7)) pour obtenir la date et l'heure
 //dans 7 jours. Enfin, il affiche les deux résultats.
