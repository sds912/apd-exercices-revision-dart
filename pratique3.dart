String inverser(String chaine) {
  return String.fromCharCodes(chaine.runes.toList().reversed);
}

//remplacement de chaine
String remplacer(
    String chaine, String caractereAChanger, String caractereDeRemplacement) {
  return chaine.replaceAll(caractereAChanger, caractereDeRemplacement);
}

//gestion de livre
class Livre {
  String titre;
  String auteur;
  int nombreDePages;

  Livre(this.titre, this.auteur, this.nombreDePages);

  void afficherInformations() {
    print('Titre : $titre');
    print('Auteur : $auteur');
    print('Nombre de pages : $nombreDePages');
  }
}

void main() {
  //inversion de chaine
  String exemple1 = 'Hello, world!';
  String exemple2 = 'Ame\u{301}lie'; // Chaîne avec caractère Unicode

  print('Exemple 1 inversé : ${inverser(exemple1)}');
  print('Exemple 2 inversé : ${inverser(exemple2)}');
  //remplacement de chaine
  String exemple = 'Bonjour, monde !';
  String resultat = remplacer(exemple, 'o', '*');

  print('Chaîne originale : $exemple');
  print('Chaîne modifiée : $resultat');

  //gestiion de livre
  Livre monLivre = Livre('Pagne noir', 'Mariama Ba', 1178);
  monLivre.afficherInformations();
}
