void main() {
  Livre livre1 = new Livre('La belle', 'Simon', 100);
  livre1.information();
}

class Livre {
  String titre;
  String auteur;
  int nombre_page;
  Livre(this.titre, this.auteur, this.nombre_page);
  void information() {
    print('titre:${titre}, auteur: ${auteur}, Nombre de pages: ${nombre_page}');
  }
}
