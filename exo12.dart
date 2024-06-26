class Personne {
  String nom;
  int age;

  // Constructeur de la classe Personne
  Personne(this.nom, this.age);
}

void main() {
  // Création de l'objet personne1 de la classe Personne
  Personne personne1 = Personne('Fatima', 22);

  // Affichage des valeurs des attributs de personne1
  print('Nom: ${personne1.nom}');
  print('Âge: ${personne1.age}');
}
