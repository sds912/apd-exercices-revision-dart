void main() {}
// 12.	Déclaration de Classes et Objets
class Personne {
 String nom;
 int age;

 Personne(this.nom, this.age);
}

class Etudiant extends Personne {
 String classe;
 

 Etudiant(String nom, int age, this.classe) : super(nom, age);
}





