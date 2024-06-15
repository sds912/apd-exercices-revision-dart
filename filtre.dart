void main() {
  List<String> filtrelongueur(List<String> liste, int n) {
    return liste.where((chaine) => chaine.length > n).toList();
  }

  print(filtrelongueur(['Modou', 'est', 'à', 'la', 'plage'], 4));
}
