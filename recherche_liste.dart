bool rechercher(List<String> liste, String chaineRecherche) {
  return liste.contains(chaineRecherche);
}

void main() {
  List<String> listeDeNoms = ['Alice', 'Bob', 'Charlie'];
  String recherche = 'Bob';
  if (rechercher(listeDeNoms, recherche)) {
    print('$recherche trouvé dans la liste.');
  } else {
    print('$recherche non trouvé dans la liste.');
  }
}
