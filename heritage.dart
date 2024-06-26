void main() {
  Personne personne1 = Personne("Durand", "Sophie", 25);

  // Utilisation des getters pour afficher les valeurs des attributs
  print("Nom: ${personne1.nom}");
  print("Prénom: ${personne1.prenom}");
  print("Age: ${personne1.age}");

  // Utilisation des setters pour modifier les valeurs des attributs
  personne1.nom = "Martin";
  personne1.prenom = "Paul";
  personne1.age = 30;

  // Affichage des attributs modifiés
  print("Nom: ${personne1.nom}");
  print("Prénom: ${personne1.prenom}");
  print("Age: ${personne1.age}");
}

class Personne {
  String _nom;
  String _prenom;
  int _age;

  Personne(this._nom, this._prenom, this._age);

  // Getters
  String get nom => _nom;
  String get prenom => _prenom;
  int get age => _age;

  // Setters
  set nom(String nom) {
    _nom = nom;
  }

  set prenom(String prenom) {
    _prenom = prenom;
  }

  set age(int age) {
    _age = age;
  }
}

class Etudiant extends Personne {
  String classe;

  Etudiant(String nom, String prenom, int age, this.classe)
      : super(nom, prenom, age);
}
