class Livre {
  String titre;
  String auteur;
  int nombreDePages;

  Livre(this.titre, this.auteur, this.nombreDePages);

  void afficherInformations() {
    print("Titre: $titre");
    print("Auteur: $auteur");
    print("Nombre de pages: $nombreDePages");
  }
}

void main() {
  Livre monLivre = Livre("Le Petit Prince", "Antoine de Saint-Exupéry", 96);
  monLivre.afficherInformations();
}

//Cette classe Livre a trois attributs : titre, auteur et nombreDePages. Le constructeur initialise ces attributs
 //lors de la création d'une nouvelle instance de la classe. La méthode afficherInformations() affiche les informations
 // du livre, telles que le titre, l'auteur et le nombre de pages.
