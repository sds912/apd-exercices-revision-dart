// Fonction pour convertir deux listes en une map
Map<K, V> convertirEnMap<K, V>(List<K> cles, List<V> valeurs) {
  assert(cles.length == valeurs.length);
  Map<K, V> resultat = {};
  for (int i = 0; i < cles.length; i++) {
    resultat[cles[i]] = valeurs[i];
  }
  return resultat;
}

// Exemple d'utilisation de la fonction convertirEnMap
void main() {
  List<String> cles = ["nom", "age", "ville"]; // Liste des clés
  List<String> valeurs = ["Aissatou", "25", "Almadie"]; // Liste des valeurs
  Map<String, String> mapResultat =
      convertirEnMap(cles, valeurs); // Conversion en map
  print("Map résultat : $mapResultat");
}
