List<int> filtrerPairs(List<int> liste) {
  // Créer une liste vide pour stocker les nombres pairs
  List<int> listePairs = [];

  // Parcourir chaque nombre dans la liste donnée
  for (int nombre in liste) {
    // Vérifier si le nombre est pair
    if (nombre % 2 == 0) {
      // Ajouter le nombre à la liste des nombres pairs
      listePairs.add(nombre);
    }
  }

  // Retourner la liste des nombres pairs
  return listePairs;
}

void main() {
  // Exemple d'utilisation de la fonction filtrerPairs
  List<int> nombres = [
    1,
    2,
    3,
    4,
    5,
    6,
    7,
    8,
    9,
    10,
    11,
    12,
    13,
    14,
    15,
    16,
    17,
    18,
    19,
    20
  ];
  List<int> nombresPairs = filtrerPairs(nombres);

  // Affichage des nombres pairs
  print("Nombres pairs : $nombresPairs");
}
