// Fonction pour calculer la moyenne d'une liste de nombres
double moyenne(List<double> nombres) {
  if (nombres.isEmpty) {
    return 0; // Si la liste est vide, la moyenne est 0
  }

  double somme = 0;
  for (double nombre in nombres) {
    somme += nombre;
  }

  return somme / nombres.length;
}

// Exemple d'utilisation de la fonction moyenne
void main() {
  List<double> nombres = [5, 10, 15, 20, 25]; // Liste de nombres
  double resultat = moyenne(nombres); // Calcul de la moyenne
  print("La moyenne est : $resultat");
}

//Cette fonction moyenne prend une liste de nombres en entrée. Elle vérifie d'abord si la liste est vide, 
//auquel cas elle retourne 0. Ensuite, elle calcule la somme de tous les nombres dans la liste et 
//la divise par le nombre total d'éléments pour obtenir la moyenne.