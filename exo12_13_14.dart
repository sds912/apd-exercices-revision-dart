// Classe Personne
class Personne {
  String nom;
  int age;

  // Constructeur
  Personne(this.nom, this.age);
}

// Fonction principale
void main() {
  // Création d'un objet personne1 de la classe Personne
  Personne personne1 = Personne("Mariama", 25);

  // Affichage des valeurs des attributs de personne1
  print("Nom de personne1 : ${personne1.nom}");
  print("Âge de personne1 : ${personne1.age}");

  // Création d'un objet etudiant1 de la classe Etudiant
  Etudiant etudiant1 = Etudiant("Ahmed", 21, "APD");

  // Affichage des valeurs des attributs de etudiant1
  print("Nom de l'étudiant1 : ${etudiant1.nom}");
  print("Âge de l'étudiant1 : ${etudiant1.age}");
  print("Classe de l'étudiant1 : ${etudiant1.classe}");

  // Utilisation des getters et setters pour modifier et afficher les valeurs des attributs de personne1
  print("Nom de personne1: ${personne1.nom}");
  personne1.nom = "Marie";
  print("Nouveau nom de personne1: ${personne1.nom}");

  print("Age de personne1: ${personne1.age}");
  personne1.age = 23;
  print("Nouvel âge de personne1: ${personne1.age}");
}

// Classe Etudiant qui hérite de Personne
class Etudiant extends Personne {
  String classe;

  // Constructeur
  Etudiant(String nom, int age, this.classe) : super(nom, age);
}
