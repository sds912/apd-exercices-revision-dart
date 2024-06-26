Map<K, V> convertirEnMap<K, V>(List<K> cles, List<V> valeurs) {
  if (cles.length != valeurs.length) {
    throw ArgumentError(
        'Les listes de clés et de valeurs doivent avoir la même longueur.');
  }

  Map<K, V> mapResultat = {};

  for (int i = 0; i < cles.length; i++) {
    mapResultat[cles[i]] = valeurs[i];
  }

  return mapResultat;
}

void main() {
  List<String> cles = ['a', 'b', 'c'];
  List<int> valeurs = [1, 2, 3];

  Map<String, int> mapResultat = convertirEnMap(cles, valeurs);

  print('Map résultante: $mapResultat');
}
