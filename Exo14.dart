class Personne {
  String _nom;
  int _age;

  // Constructeur de la classe Personne
  Personne(this._nom, this._age);

  // Getter pour l'attribut nom
  String get nom => _nom;

  // Setter pour l'attribut nom
  set nom(String nom) {
    _nom = nom;
  }

  // Getter pour l'attribut age
  int get age => _age;

  // Setter pour l'attribut age
  set age(int age) {
    if (age > 0) {
      _age = age;
    } else {
      throw Exception('L\'âge doit être positif.');
    }
  }

  // Méthode pour afficher les détails de la personne
  void afficherDetails() {
    print('Nom: $nom, Âge: $age');
  }
}

void main() {
  // Création d'un objet personne1 de la classe Personne
  Personne personne1 = Personne('Fatima Diatta', 16);

  // Utilisation des getters pour afficher les valeurs initiales
  print('Nom initial: ${personne1.nom}');
  print('Âge initial: ${personne1.age}');

  // Utilisation des setters pour modifier les valeurs
  personne1.nom = 'Mariama Diatta';
  personne1.age = 10;

  // Utilisation des getters pour afficher les nouvelles valeurs
  print('Nouveau nom: ${personne1.nom}');
  print('Nouvel âge: ${personne1.age}');

  // Affichage des détails de personne1
  personne1.afficherDetails();
}

//Dans ce code :
//_nom et _age sont des attributs privés de la classe Personne, indiqués par le préfixe _.
//String get nom => _nom; définit un getter pour l'attribut nom.//set nom(String nom) { _nom = nom; } 
//définit un setter pour l'attribut nom.
//int get age => _age; définit un getter pour l'attribut age.
//set age(int age) { if (age > 0) { _age = age; } else { throw Exception('L\'âge doit être positif.'); } }
// définit un setter pour l'attribut age avec une vérification pour s'assurer que
// l'âge est positif./personne1.nom = 'Jane Doe'; utilise le setter pour modifier l'attribut nom.
//personne1.age = 25; utilise le setter pour modifier l'attribut age.
//print('Nouveau nom: ${personne1.nom}'); utilise le getter pour afficher la nouvelle valeur de nom.
//print('Nouvel âge: ${personne1.age}'); utilise le getter pour afficher la nouvelle valeur de age.
