void main() {
  final nombre = 5;
  final resultat = factorielle(nombre);
  print('La factorielle de $nombre est $resultat');

  final listeNombres = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  final listePairs = filtrerPairs(listeNombres);

  print('la liste de nombres : $listeNombres');
  print('la liste des nombres pairs est: $listePairs');

  //concatener
  final res = concatener('Bonjour, ', 'monde !');
  print(res); // Affiche "Bonjour, monde !"

  ///Liste
  List<String> maListe = ['chat', 'chien', 'oiseau', 'poisson'];
  String motRecherche = 'chien';

  if (rechercher(maListe, motRecherche)) {
    print('Le mot "$motRecherche" a été trouvé dans la liste.');
  } else {
    print('Le mot "$motRecherche" n\'a pas été trouvé dans la liste.');
  }
}

int factorielle(int n) {
  if (n == 0 || n == 1) {
    return 1;
  } else {
    return n * factorielle(n - 1);
  }
}

List<int> filtrerPairs(List<int> nombres) {
  return nombres.where((nombre) => nombre.isEven).toList();
}

// concatenenr
String concatener(String chaine1, String chaine2) {
  return chaine1 + chaine2;
}

//Liste
bool rechercher(List<String> liste, String recherche) {
  return liste.contains(recherche);
}
