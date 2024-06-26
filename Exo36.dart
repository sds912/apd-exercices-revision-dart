void main() {
  // Créer un Set de nombres
  Set<int> nombres = {1, 2, 3, 4, 5};

  // Ajouter des éléments à l'ensemble
  nombres.add(6);
  nombres.add(7);

  // Supprimer des éléments de l'ensemble
  nombres.remove(3);
  nombres.remove(5);

  // Afficher le contenu final de l'ensemble
  print("Contenu final du Set : $nombres");
}

//Ce programme crée un ensemble initial avec les nombres de 1 à 5, ajoute les nombres 6 et 7,
// puis retire les nombres 3 et 5. Enfin, il affiche le contenu final de l'ensemble.