void main() {
  bool rechercher(List<String> liste, String recherche) {
    return liste.contains(recherche);
  }

  print(rechercher(['mo', 'dou', 'mama'], 'dou'));

  String concatener(String chaine1, String chaine2) {
    return chaine1 + chaine2;
  }

  print(concatener('le', 'mal'));
}
