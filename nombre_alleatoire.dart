import 'dart:math';

void main() {
  Random random = Random();

  for (int i = 0; i < 5; i++) {
    int nombreAleatoire =
        random.nextInt(100) + 1; // Générer un nombre aléatoire entre 1 et 100
    print("Nombre aléatoire ${i + 1}: $nombreAleatoire");
  }
}
