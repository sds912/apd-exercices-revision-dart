void main() {
  Map<k, v> convertirenmap<k, v>(List<k> cles, List<v> valeurs) {
    assert(cles.length == valeurs.length);
    return Map.fromIterables(cles, valeurs);
  }

  print(convertirenmap(['Modou', 'Samba'], [2, 8]));
}
