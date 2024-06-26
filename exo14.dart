class Personne {
  String _nom;
  int _age;

  // Constructeur de la classe Personne
  Personne(this._nom, this._age);

  // Getter pour le nom
  String get nom => _nom;

  // Setter pour le nom
  set nom(String nom) {
    _nom = nom;
  }

  // Getter pour l'âge
  int get age => _age;

  // Setter pour l'âge
  set age(int age) {
    if (age >= 0) {
      _age = age;
    } else {
      throw ArgumentError('L\'âge ne peut pas être négatif.');
    }
  }
}

void main() {
  // Création de l'objet personne1 de la classe Personne
  Personne personne1 = Personne('Fatima', 22);

  // Affichage des valeurs initiales des attributs de personne1
  print('Nom initial: ${personne1.nom}');
  print('Âge initial: ${personne1.age}');

  // Modification des valeurs des attributs de personne1 en utilisant les setters
  personne1.nom = 'Rassoul';
  personne1.age = 23;

  // Affichage des nouvelles valeurs des attributs de personne1 en utilisant les getters
  print('Nouveau nom: ${personne1.nom}');
  print('Nouvel âge: ${personne1.age}');
}
