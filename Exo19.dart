// Fonction récursive pour calculer la factorielle d'un nombre
int factorielle(int n) {
  if (n == 0) {
    return 1; // Factorielle de 0 est 1
  } else {
    return n *
        factorielle(
            n - 1); // Appel récursif pour calculer la factorielle de n-1
  }
}

// Exemple d'utilisation de la fonction factorielle
void main() {
  int nombre =
      5; // Remplacez 5 par le nombre dont vous voulez calculer la factorielle
  print("Factorielle de $nombre est ${factorielle(nombre)}");
}

//Cette fonction factorielle prend un entier n comme argument et retourne la factorielle de n.
 //Elle utilise une approche récursive où si n est égal à 0, la fonction retourne 1 (car la factorielle de 0 est 1), 
 //sinon elle retourne n * factorielle(n - 1) pour calculer la factorielle de n.