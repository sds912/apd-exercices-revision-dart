class Personne {
  String nom;
  int age;

  // Constructeur de la classe Personne
  Personne(this.nom, this.age);

  // Méthode pour afficher les détails de la personne
  void afficherDetails() {
    print('Nom: $nom, Âge: $age');
  }
}

void main() {
  // Création d'un objet personne1 de la classe Personne
  Personne personne1 = Personne('Souleymane Diop', 30);

  // Affichage des détails de personne1
  personne1.afficherDetails();
}
