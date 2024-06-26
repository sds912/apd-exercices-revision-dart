import 'dart:math';

// Fonction pour générer et afficher 5 nombres aléatoires entre 1 et 100
void genererNombresAleatoires() {
  Random random = Random();
  for (int i = 0; i < 5; i++) {
    int nombreAleatoire =
        random.nextInt(100) + 1; // Génère un nombre aléatoire entre 1 et 100
    print("Nombre aléatoire ${i + 1} : $nombreAleatoire");
  }
}

// Programme principal
void main() {
  genererNombresAleatoires();
}

//Ce programme utilise la classe Random de Dart pour générer des nombres aléatoires. Il boucle 5 fois et à chaque 
//itération, il génère un nombre aléatoire compris entre 1 et 100 à l'aide de random.nextInt(100) + 1 et l'affiche.