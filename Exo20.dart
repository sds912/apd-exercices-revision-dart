// Fonction pour filtrer les nombres pairs d'une liste
List<int> filtrerPairs(List<int> nombres) {
  return nombres.where((nombre) => nombre % 2 == 0).toList();
}

// Exemple d'utilisation de la fonction filtrerPairs
void main() {
  List<int> nombres = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]; // Liste de nombres
  List<int> pairs = filtrerPairs(
      nombres); // Appel de la fonction pour filtrer les nombres pairs
  print("Nombres pairs : $pairs");
}

//Cette fonction filtrerPairs prend une liste de nombres en entrée, utilise la méthode where pour filtrer
 //les nombres pairs à l'aide d'une condition (nombre % 2 == 0), puis retourne une nouvelle liste contenant uniquement 
 //les nombres pairs.