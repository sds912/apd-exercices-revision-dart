class Personne {
  String nom;
  int age;

  Personne(this.nom, this.age);
}

void main() {
  Personne personne1 = Personne('Mbengue', 20);
  print('Nom: ${personne1.nom}, Âge: ${personne1.age}');
}
