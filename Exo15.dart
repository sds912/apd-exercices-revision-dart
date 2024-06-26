
// Fonction qui calcule le carré d'un nombre
int carre(int nombre) {
  return nombre * nombre;
}
// main.dart

// Importer le fichier calculs.dart
import "calculs.dart";

void main() {
  // Utiliser la fonction carre pour calculer le carré d'un nombre
  int nombre = 4;
  int resultat = carre(nombre);

  // Afficher le résultat
  print('Le carré de $nombre est $resultat');
}