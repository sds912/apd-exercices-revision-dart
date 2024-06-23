// Conditions (if, else)
void verifierNombre(int nombre) {
  if (nombre > 0) {
    print("$nombre est un nombre positif.");
  } else if (nombre < 0) {
    print("$nombre est un nombre négatif.");
  } else {
    print("$nombre est zéro.");
  }
}

// Boucles (for, while)
void afficherNombresFor() {
  for (int i = 1; i <= 10; i++) {
    print(i);
  }
}

void afficherNombresWhile() {
  int nombre = 10;
  while (nombre >= 1) {
    print(nombre);
    nombre--;
  }
}

// Gestion des Exceptions
double division(double dividende, double diviseur) {
  if (diviseur == 0) {
    throw Exception("Division par zéro.");
  }
  return dividende / diviseur;
}

void main() {
  // Conditions (if, else)
  verifierNombre(1);
  verifierNombre(-7);
  verifierNombre(0);

  // Boucles (for, while)
  print("Nombres de 1 à 10 :");
  afficherNombresFor();
  print("Nombres de 10 à 1 :");
  afficherNombresWhile();

  // Gestion des Exceptions
  try {
    print("Résultat de la division : ${division(10, 2)}");
    print("Résultat de la division : ${division(10, 0)}");
  } catch (e) {
    print("Une erreur s'est produite : $e");
  }
}
