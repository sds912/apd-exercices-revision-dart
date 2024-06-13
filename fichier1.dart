void main() {
  // Déclaration de Variables
  String nom = "Awa";
  int age = 23;
  print(age);
  print(nom);

   // Types de Variables
  double pi = 3.14;
  print(pi);
  bool isFlutterAwesome = true;
  print(isFlutterAwesome);

   // Utilisation des Maps
  Map<String, dynamic> etudiant = {
    'diouf': 'awa',
    'age': 22,  
    'classe': 'Classe1',
  };
  etudiant['17'] = 85;
  

  // Variables Finales et Constantes
  final String nomComplet = "awa";
  print(nomComplet); 
  const int vitesseLumiere = 299792458;
  print(vitesseLumiere);
  // Lists et Maps
  // Utilisation des Listes
  List<int> nombres = [1, 2, 3, 4, 5];
  nombres.add(6);



   // Fonctions
  // Définition et Appel de Fonctions
  void bonjour(String nom) {
    print("Bonjour, $nom!");
  }
  bonjour(nom);

  // Fonctions avec Paramètres et Valeurs de Retour
  int addition(int a, int b) {
    return a + b;
  }
  int resultat = addition(5, 7);
  print("La somme de 5 et 7 est: $resultat");


    // Structures de Contrôle
  // Conditions (if, else)
  int nombre = -3;  // Changez ce nombre pour tester différentes conditions
  if (nombre > 0) {
    print("$nombre est positif");
  } else if (nombre < 0) {
    print("$nombre est négatif");
  } else {
    print("$nombre est zéro");
  }

  // Boucles (for, while)
  for (int i = 1; i <= 10; i++) {
    print(i);
  }



  // Boucle while qui affiche les nombres de 10 à 1
  int i = 10;
  while (i >= 1) {
    print(i);
    i--;
  }
 //Fonction division qui prend deux nombres et retourne leur division
  double division(double a, double b) {
    if (b == 0) {
      throw Exception("Division par zéro");
    }
    return a / b;
  }

  // Gestion des exceptions
  try {
    print(division(10, 2));  
    print(division(10, 0)); 
  } catch (e) {
    print(e); 
  }



  
}


  
  
 
  


