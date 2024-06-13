// Variables en Dart

// 2. Déclaration de Variables
String prenom = 'Daba';
int age = 15;

// 3. Types de Variables
double pi = 3.14;
bool isFlutterAwesome = true;

// 4. Variables Finales et Constantes
final String nom = 'ndack';
const int vitesseLumiere = 299792458;

// 5. Utilisation des Listes
void liste() {
  var nombres = [1, 2, 3, 4, 5];
  nombres.add(6);
  print(nombres);
}

// 6. Utilisation des Maps
void map() {
  var etudiant = {'nom': 'Aminata', 'age': 25, 'classe': 'APD'};
  etudiant['note'] = 85;
  print(etudiant);
}

// 7. Définition et Appel de Fonctions
void bonjour(String nomm) {
  print('Bonjour, $nomm!');
}

// 8. Fonctions avec Paramètres et Valeurs de Retour
int addition(int a, int b) {
  return a + b;
}

// 9. Conditions (if, else)
void verifierNombre(int nombre) {
  if (nombre > 0) {
    print('$nombre est positif');
  } else if (nombre < 0) {
    print('$nombre est négatif');
  } else {
    print('$nombre est zéro');
  }
}

// 10. Boucles (for, while)
void boucles() {
  print('Boucle for:');
  for (int i = 1; i <= 10; i++) {
    print(i);
  }

  print('Boucle while:');
  int j = 10;
  while (j >= 1) {
    print(j);
    j--;
  }
}

// 11. Gestion des Exceptions
double division(double a, double b) {
  if (b == 0) {
    throw Exception('Le dénominateur ne peut pas être zéro');
  }
  return a / b;

  
}

/*Classes

12.	Déclaration de Classes et Objets
•	Créez une classe Personne avec des attributs nom et age.
•	Créez un objet personne1 de la classe Personne et assignez des valeurs aux attributs.*/

class Personne{
  String _nom;
  int _age;
  Personne(this._nom,this._age);

  String get nom => _nom;
  set nom(String value) => _nom=value;

  int get age => _age;
  set age(int value) => _age = value;

}

// 13. Héritage et Polymorphisme
  // Créez une classe Etudiant qui hérite de Personne et ajoute un attribut classe
  class Etudiant extends Personne {
    String classe;

    Etudiant(String nom, int age, this.classe) : super(nom, age);
  }




// Fonction principale qui appelle les autres fonctions
void main() {
  // Affichage des variables
  print('Prénom: $prenom');
  print('Âge: $age');
  print('Pi: $pi');
  print('Flutter est génial: $isFlutterAwesome');
  print('Nom complet: $nom');
  print('Vitesse de la lumière: $vitesseLumiere');

  // Appel des autres fonctions
  liste();
  map();
  bonjour('Fifi');
  
  int resultatAddition = addition(5, 7);
  print('la somme est: $resultatAddition');
  
  verifierNombre(10);
  verifierNombre(-5);
  verifierNombre(0);
  
  boucles();

  try {
    double resultatDivision = division(10, 2);
    print('Résultat de la division: $resultatDivision');
  } catch (e) {
    print('Erreur: $e');
  }

  try {
    double resultatDivisionZero = division(10, 0);
    print('Résultat de la division: $resultatDivisionZero');
  } catch (e) {
    print('Erreur: $e');
  }
  //12.
  // Créez un objet personne1 de la classe Personne et assignez des valeurs aux attributs
  var personne1 = Personne('Daba', 15);
  print('Nom: ${personne1.nom}, Age: ${personne1.age}');
  // Utilisez les getters pour afficher les valeurs des attributs de personne1
  print('Nom: ${personne1.nom}, Age: ${personne1.age}');

  // Utilisez les setters pour modifier les valeurs des attributs de personne1
  personne1.nom = 'Ndack';
  personne1.age = 20;

  // 14.Utilisez les getters pour afficher les valeurs des attributs de personne1
  print('Nom modifié: ${personne1.nom}, Age modifié: ${personne1.age}');

  // 13. Héritage et Polymorphisme
  // Créez une classe Etudiant qui hérite de Personne et ajoute un attribut classe

  // Créez un objet etudiant1 de la classe Etudiant et assignez des valeurs aux attributs
  var etudiant1 = Etudiant('Aminata', 25, 'APD');
  print('Nom: ${etudiant1.nom}, Age: ${etudiant1.age}, Classe: ${etudiant1.classe}');

}
