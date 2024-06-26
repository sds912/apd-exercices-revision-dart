void main() {
  Personne personne1 = Personne('Mohameth Diagne', 23);
  Personne personne2 = Personne('Alpha Thiame', 30);
  personne1.nomcomplet();
  personne2.nomcomplet();
  print(personne1.nom);
}

class Personne {
  String nom = '';
  int age = 0;
  //le constructeur
  Personne(String nom, int age) {
    this.nom = nom;
    this.age = age;
  }
  void nomcomplet() {
    print("je m'appele $nom et j'ai $age ans");
  }
}
