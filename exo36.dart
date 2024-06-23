void main() {
  // Création d'un Set de nombres
  Set<int> nombres = {1, 2, 3, 4, 5};

  print("Set initial : $nombres");

  // Ajout d'éléments au Set
  nombres.add(6);
  nombres.add(7);
  print("Set après ajout : $nombres");

  // Tentative d'ajouter un élément déjà présent (ne change pas le Set)
  nombres.add(3);
  print("Set après tentative d'ajouter un élément existant : $nombres");

  // Retirer des éléments du Set
  nombres.remove(2);
  nombres.remove(4);
  print("Set après retrait : $nombres");

  // Affichage du contenu final du Set
  print("Contenu final du Set : $nombres");
}
