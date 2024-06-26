int factorielle(int n) {
  // Cas de base : factorielle(0) = 1
  if (n == 0) {
    return 1;
  }

  // Cas récursif : factorielle(n) = n * factorielle(n-1)
  return n * factorielle(n - 1);
}

void main() {
  // Exemple d'utilisation de la fonction factorielle
  int nombre = 6; // Calculer la factorielle de 5
  int resultat = factorielle(nombre);

  print("Factorielle de $nombre est : $resultat");
}
