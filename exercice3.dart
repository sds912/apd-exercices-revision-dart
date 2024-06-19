/*
// 13.	Héritage et Polymorphisme
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
 Etudiant etudiant1 = Etudiant("Alice", 20, "Classe A");

 print("Nom: ${etudiant1.nom}");
 print("Age: ${etudiant1.age}");
 print("Classe: ${etudiant1.classe}");

 
}

*/

//14.	Getters et Setters
class Personne {
 late String nom;
 late int age;

 String getNom() {
     return nom;
 }

 void setNom(String nom) {
     this.nom = nom;
 }

 int getAge() {
     return age;
 }

 void setAge(int age) {
     this.age = age;
 }
}

void main() {
 Personne personne1 = Personne();
 personne1.setNom("Alice");
 personne1.setAge(30);

 print("Nom de la personne : ${personne1.getNom()}");
 print("Age de la personne : ${personne1.getAge()}");
}