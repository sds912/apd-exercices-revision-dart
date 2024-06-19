 // 2) Declaration de variable //


 void main() {
  // Déclarez une variable nom de type String
  String nom = 'Adja';
  print(nom);
  
  // Déclarez une variable age de type int
  int age = 21;
  print(age);



// 3. Types de Variables//

  // Déclarez une variable pi de type double
  double pi = 3.14;
  print(pi);
  
  // Déclarez une variable isFlutterAwesome de type bool
  bool isFlutterAwesome = true;
  print(isFlutterAwesome);




 // 4. Variables Finales et Constantes //


 // Déclarez une variable nomComplet comme final
  final String nomComplet = 'Adja';
  print(nomComplet);
  
  // Déclarez une constante vitesseLumiere
  const int vitesseLumiere = 299792458; 
  print(vitesseLumiere);

  // 5. Utilisation des Listes //


  // Créez une liste nombres contenant les nombres de 1 à 5
  List<int> nombres = [1, 2, 3, 4, 5];
  
  // Ajoutez le nombre 6 à la liste nombres
  nombres.add(6);
  print(nombres);



  // 6. Utilisation des Maps //

  // Créez une map etudiant avec les clés nom, age, et classe et leurs valeurs respectives
  var etudiant = {
    'nom': 'VotreNom',
    'age': 25,
    'classe': 'Terminale'
  };
  etudiant['note'] = 85;

  print(etudiant);


  // 7. Définition et Appel de Fonctions //

  void bonjour(String Adja) {
  print('Bonjour, $Adja!');
}

  // Appelez la fonction bonjour avec votre nom
  bonjour('Adja');

  // les fonctions //

  int addition(int a, int b) {
  return a + b;
}
   // Appelez la fonction addition avec les nombres 5 et 7 et affichez le résultat

  int resultat = addition(5, 7);
  print('Le résultat est: $resultat');


  //Structures de Contrôle
// 9. Conditions (if, else)


  int nombre = 5;
  
  if (nombre > 0) {
    print('Le nombre est positif.');
  } else if (nombre < 0) {
    print('Le nombre est négatif.');
  } else {
    print('Le nombre est nul.');
  
}


// 10. Boucles (for, while)

  // Boucle for qui affiche les nombres de 1 à 10

  for (int i = 1; i <= 10; i++) {
    print(i);

  }
    
  // Boucle while qui affiche les nombres de 10 à 1

  int j = 10;
  while (j >= 1) {
    print(j);
    j--;
  }














}




















 