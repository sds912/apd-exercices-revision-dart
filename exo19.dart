// 19. Calcul de Factorielle
int factorielle(int n) {
  if (n == 0) {
    return 1;
  } else {
    return n * factorielle(n - 1);
  }
}

void main() {
  // Test de la fonction factorielle
  int nombre = 5;
  print('La factorielle de $nombre est ${factorielle(nombre)}');
}
