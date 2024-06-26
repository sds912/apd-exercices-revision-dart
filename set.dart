void main() {
  Set<int> ensemble = Set();

  // Ajout d'éléments dans le Set
  ensemble.add(1);
  ensemble.add(2);
  ensemble.add(3);

  print('Contenu initial du Set: $ensemble');

  // Retrait d'éléments du Set
  ensemble.remove(2);

  print('Contenu final du Set après retrait: $ensemble');
}
