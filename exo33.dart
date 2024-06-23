Map<K, V> convertirEnMap<K, V>(List<K> cles, List<V> valeurs) {
  if (cles.length != valeurs.length) {
    throw ArgumentError('Les listes de clés et de valeurs doivent avoir la même longueur');
  }

  Map<K, V> map = {};
  for (int i = 0; i < cles.length; i++) {
    map[cles[i]] = valeurs[i];
  }

  return map;
}

void main() {
  List<String> cles = ['nom', 'age', 'ville'];
  List<dynamic> valeurs = ['Mamadou', 33, 'Rufisque'];

  Map<String, dynamic> map = convertirEnMap(cles, valeurs);
  print(map); // Affiche: {nom: Mamadou, age: 33, ville: Rufisque}
}
