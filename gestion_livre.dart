class Livre {
  String titre;
  String auteur;
  int nombrePages;

  Livre(this.titre, this.auteur, this.nombrePages);

  void afficherInformations() {
    print('Titre: $titre, Auteur: $auteur, Nombre de pages: $nombrePages');
  }
}

void main() {
  Livre monLivre = Livre('1984', 'George Orwell', 328);
  monLivre
      .afficherInformations(); // Output: Titre: 1984, Auteur: George Orwell, Nombre de pages: 328
}
