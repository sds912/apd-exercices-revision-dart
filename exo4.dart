void main() {
  Etudiant etudiant1 = new Etudiant('Samba', 23, 'APD');
  print('Nom: ${etudiant1.nom}');
  print('Age: ${etudiant1.age} ans');
  print('Classe: ${etudiant1.classe}');
}

class Personne {
  String nom;
  int age;
  Personne(this.nom, this.age);
}

class Etudiant extends Personne {
  String classe;
  Etudiant(String nom, int age, this.classe) : super(nom, age);
}
