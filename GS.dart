class Personne {
  String _nom;
  int _age;

  Personne(this._nom, this._age);

  // Getters
  String get nom => _nom;
  int get age => _age;

  // Setters
  set nom(String nom) {
    _nom = nom;
  }

  set age(int age) {
    _age = age;
  }
}

void main() {
  Personne personne1 = Personne('Mbengue', 20);
  print('Nom: ${personne1.nom}, Âge: ${personne1.age}');

  personne1.nom = 'Faye';
  personne1.age = 26;
  print('Nom: ${personne1.nom}, Âge: ${personne1.age}');
}
