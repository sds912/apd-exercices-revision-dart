class Personne {
  String nom;
  int age;

  // Constructeur de la classe Personne
  Personne(this.nom, this.age);
}

class Etudiant extends Personne {
  String classe;

  // Constructeur de la classe Etudiant
  Etudiant(String nom, int age, this.classe) : super(nom, age);
}

void main() {
  // Création de l'objet etudiant1 de la classe Etudiant
  Etudiant etudiant1 = Etudiant('Fatima', 22, 'L2 Data Analyste');

  // Affichage des valeurs des attributs de etudiant1
  print('Nom: ${etudiant1.nom}');
  print('Âge: ${etudiant1.age}');
  print('Classe: ${etudiant1.classe}');
}
