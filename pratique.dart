/*void main(List<String> args) {
  //Déclaration d'une variable nom de type String et assignez-lui un nom
  String name = 'cheikh';
  print(name);
  //	Déclaration d'une variable age de type int et assignez-lui votre âge
  var age = 23;
  print(age);
  //	Déclaration une variable pi de type double avec la valeur 3.14
  double pi = 3.14; //fload
  print(pi);
  //Déclaration une variable isFlutterAwesome de type bool avec la valeur true
  bool isFlutterAwesome = true;
  print(isFlutterAwesome);
  //	Déclarez une variable nomComplet comme final et assignez-lui votre nom complet
  final nomComplet = 'cheikhtidiane';
  print(nomComplet);
  //	Déclarez une constante vitesseLumiere avec la valeur 299792458 (m/s)
  const vitesseLumiere = '299792458 (m / s)';
  print(vitesseLumiere);
}*/

//Lists et Maps
void main() {
  //	Créons une liste nombres contenant les nombres de 1 à 5
  var nombre = ['1', '2', '3', '4', '5'];
  nombre.add('6'); //ajout du nombre 6 a la liste
  print(nombre);
  //	Créons une map etudiant avec les clés nom, age, et classe et leurs valeurs respectives
  Map<String, dynamic> etudiant = {
    'name': 'cheikh',
    'classe': 'informatique',
    'age': 20
  };
  // Ajoutons la clé "note" avec une valeur de 85 à la map étudiant
  etudiant['note'] = 85;
  print('name: ${etudiant['name']}');
  print('classe: ${etudiant['classe']}');
  print('age: ${etudiant['age']}');
  print('Note: ${etudiant['note']}');
}

// 7-Définition et Appel de Fonctions
//	Écrivons une fonction bonjour qui prend un nom en paramètre et affiche "Bonjour, [nom]!"
void bonjour(String nom) {
  print("Bonjour, $nom!");
}

void nom(List<String> args) {
  bonjour("Diaw");

  int addition(int a, int b) {
    //declaration function avec dart
    return a + b;
  }

  var resultat = addition(7, 6);
  print(resultat);
  //structure de controle
  void verifierNombre(int nombre) {
    if (nombre > 0) {
      print("$nombre est un nombre positif.");
    } else if (nombre < 0) {
      print("$nombre est un nombre négatif.");
    } else {
      print("$nombre est zéro.");
    }
  }

  int nombre = 0; // Mettons ici le nombre que nous souhaitons vérifier

  verifierNombre(nombre);

    // Boucle for pour afficher les nombres de 1 à 10
  print("Affichage des nombres de 1 à 10 :");
  for (int i = 1; i <= 10; i++) {
    print(i);
  }

  // Boucle while pour afficher les nombres de 10 à 1
  print("Affichage des nombres de 10 à 1 :");
  int j = 10;
  while (j >= 1) {
    print(j);
    j--;
  }
 
  
}
 //	Héritage et Polymorphisme
class Personne {
  String nom;
  int age;

  Personne(this.nom, this.age);
}

class Etudiant extends Personne {
  String classe;

  Etudiant(String nom, int age, this.classe) : super(nom, age);
}

void personne() {
  Etudiant etudiant1 = Etudiant("Diaw", 20, "Classe APD");
  print(etudiant1.nom);    // Output: Diaw
  print(etudiant1.age);    // Output: 20
  print(etudiant1.classe); // Output: Classe APD
}


// Calcul de Factorielle
int factorielle(int n) {
  if (n == 0) {
    return 1;
  } else {
    return n * factorielle(n - 1);
  }
}
//21.	Concaténation de Chaînes
String concatener(String chaine1, String chaine2) {
  return chaine1 + chaine2;
}
// trie de list
List<int> trier(List<int> liste) {
  liste.sort();
  return liste;
  
void main() {
  List<int> nombres = [4, 2, 7, 1, 9, 5];
  print('Liste avant le tri : $nombres');

  List<int> listeTrie = trier(nombres);
  print('Liste après le tri : $listeTrie');
}
}









