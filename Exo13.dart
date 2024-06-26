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

class Etudiant extends Personne {
  String classe;

  // Constructeur de la classe Etudiant
  Etudiant(String nom, int age, this.classe) : super(nom, age);

  // Surcharge de la méthode afficherDetails pour inclure la classe
  @override
  void afficherDetails() {
    super.afficherDetails();
    print('Classe: $classe');
  }
}

void main() {
  // Création d'un objet etudiant1 de la classe Etudiant
  Etudiant etudiant1 = Etudiant('Lamine Cissé', 21, 'Développeur');

  // Affichage des détails de etudiant1
  etudiant1.afficherDetails();
}

//Dans ce code :
//class Personne définit une classe nommée Personne avec deux attributs : nom et age.
//Personne(this.nom, this.age); est un constructeur qui initialise les attributs nom et age.
//void afficherDetails() est une méthode pour afficher les détails de la personne.
//class Etudiant extends Personne définit une classe Etudiant qui hérite de Personne et ajoute un attribut classe.
//Etudiant(String nom, int age, this.classe) : super(nom, age); est un constructeur pour Etudiant qui initialise les
// attributs nom et age en appelant le constructeur de la classe parente Personne, et initialise l'attribut classe.
//@override indique que la méthode afficherDetails surcharge celle de la classe parente Personne pour inclure
// l'affichage de classe.
//Etudiant etudiant1 = Etudiant('Alice Martin', 21, 'Informatique'); crée un objet etudiant1 de la classe
// Etudiant et assigne les valeurs Alice Martin, 21, et Informatique aux attributs nom, age, et classe respectivement.
//etudiant1.afficherDetails(); appelle la méthode afficherDetails pour afficher les détails de etudiant1.
