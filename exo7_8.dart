// Définition et Appel de Fonctions
void bonjour(String nom) {
  print("Bonjour, $nom !");
}

// Fonction avec Paramètres et Valeur de Retour
int addition(int a, int b) {
  return a + b;
}

void main() {
  // Appel de la fonction bonjour avec votre nom
  bonjour("Pape Malick");

  // Appel de la fonction addition avec les nombres 5 et 7
  int resultat = addition(5, 7);
  print("La somme est de : $resultat");
}
