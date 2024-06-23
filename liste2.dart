bool rechercher(List<String> liste, String recherche) {
  return liste.contains(recherche);
}

void main() {
  print(rechercher(['Pomme', 'Banane', 'Fraise'], 'Banane'));
}
