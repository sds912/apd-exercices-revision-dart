// 39.	Classe pour Gestion de Livres

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
 Livre monLivre = Livre("champs dombre", "leopold sedar senghor", 400);
 monLivre.afficherInformations();

 
}