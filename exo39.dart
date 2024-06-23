class Livre {
  String titre;
  String auteur;
  int nombrePages;

  Livre(this.titre, this.auteur, this.nombrePages);

  void afficherInformations() {
    print("Livre : $titre");
    print("Auteur : $auteur");
    print("Nombre de pages : $nombrePages");
  }
}

void main() {
  // Création d'un objet livre
  Livre monLivre = Livre("L'enfant noir'", "Camara laye", 96);

  // Affichage des informations du livre
  monLivre.afficherInformations();
}
