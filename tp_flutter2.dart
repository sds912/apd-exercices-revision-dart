
  
// CLASSES

  // 12. Déclaration de Classes et Objets
  class Personne {
    String nom;
    int age;

    Personne(this.nom, this.age);
  }
 
  // 13. Héritage et Polymorphisme
  class Etudiant extends Personne {
    String classe;

    Etudiant(String nom, int age, this.classe) : super(nom, age);
  }
 


  // 14. Getters et Setters
  class PersonneAvecGetters {
    String _nom;
    int _age;

    PersonneAvecGetters(this._nom, this._age);

    String get nom => _nom;
    int get age => _age;

    set nom(String nom) {
      _nom = nom;
    }

    set age(int age) {
      _age = age;
    }
  }
 
// 25. Filtrage de Map
Map<String, int> filtrerEtudiants(Map<String, int> etudiants) {
  return Map.fromEntries(
    etudiants.entries.where((entry) => entry.value > 70),
  );
}
  
 

// 39. Classe pour Gestion de Livres
  class Livre {
    String titre;
    String auteur;
    int nombrePages;

    Livre(this.titre, this.auteur, this.nombrePages);

    void afficherInfos() {
      print("Titre: $titre, Auteur: $auteur, Nombre de pages: $nombrePages");
    }
  }
 

  // 34. Classe pour Gestion de Banque
  class CompteBancaire {
    double solde;

    CompteBancaire(this.solde);

    void deposer(double montant) {
      solde += montant;
    }

    void retirer(double montant) {
      if (montant <= solde) {
        solde -= montant;
      } else {
        print("Solde insuffisant");
      }
    }

    double verifierSolde() {
      return solde;
    }
  }

//INTENSIFICATION DES CLASSES
   void main() {
//12
Personne personne1 = Personne("Lamine", 22);
print("$personne1.nom, $personne1.age ans");
  

// heritage et polymorphe
 Etudiant etudiant1 = Etudiant("Lamine", 22, "APD");
  print("$etudiant1.nom, $etudiant1.age ans, $etudiant1.classe");

  //  Classe pour Gestion de Livres
  Livre livre = Livre("Mariama BA", "Une si longue lettre", 120);
  livre.afficherInfos(); 

// Classe pour Gestion de Banque
  CompteBancaire compte = CompteBancaire(100);
  compte.deposer(50);
  compte.retirer(30);
  print(compte.verifierSolde()); 

// Getters et Setters
  PersonneAvecGetters personneAvecGetters = PersonneAvecGetters("Lamine", 22);
  print("$personneAvecGetters.nom, $personneAvecGetters.age ans");

  personneAvecGetters.nom = "Ahmadou";
  personneAvecGetters.age = 23;
  print("$personneAvecGetters.nom, $personneAvecGetters.age ans");


Map<String, int> etudiants = {
    'lamine': 85,
    'momo': 65,
    'ahmadou': 75,
    'Dave': 55
  };
  print(filtrerEtudiants(etudiants)); 


  }
 
  
