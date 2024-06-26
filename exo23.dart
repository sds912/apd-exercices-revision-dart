double moyenne(List<num> liste) {
  if (liste.isEmpty) {
    return 0; // Retourne 0 si la liste est vide pour éviter une division par zéro
  }

  num somme = 0;
  for (num nombre in liste) {
    somme += nombre; // Calcul de la somme des nombres dans la liste
  }

  // Calcul de la moyenne en divisant la somme par le nombre d'éléments dans la liste
  double moyenne = somme / liste.length;
  return moyenne;
}

void main() {
  // Exemple d'utilisation de la fonction moyenne
  List<num> nombres = [2, 4, 6, 8, 10];
  double resultat = moyenne(nombres);

  // Affichage du résultat
  print("Moyenne des nombres : $resultat");
}
