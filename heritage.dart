class Personne {
  String nom;
  int age;

  Personne(this.nom, this.age);
}

class Etudiant extends Personne {
  String classe;

  Etudiant(String nom, int age, this.classe) : super(nom, age);
}

void main() {
  Etudiant etudiant1 = Etudiant('Mbengue', 20, 'APD');
  print(
      'Nom: ${etudiant1.nom}, Âge: ${etudiant1.age}, Classe: ${etudiant1.classe}');
}
