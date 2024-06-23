import 'dart:math';

void main() {
  // Créer une instance de la classe Random
  var random = Random();

  // Générer et afficher 5 nombres aléatoires compris entre 1 et 100
  for (int i = 0; i < 5; i++) {
    int nombreAleatoire = 1 + random.nextInt(100); // nextInt(100) génère un nombre entre 0 et 99, donc on ajoute 1
    print('Nombre aléatoire ${i + 1} : $nombreAleatoire');
  }
}
