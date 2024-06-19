void main() {

  //Gestion des Exceptions
  //11. Division avec Gestion des Exceptions
  double division(double numerateur, double denominateur) {
  if (denominateur == 0) {
    throw Exception('Le dénominateur ne peut pas être zéro.');
  }
  return numerateur / denominateur;
}

  try {
    double resultat = division(10, 0);
    print('Résultat: $resultat');
  } catch (e) {
    print('Erreur: $e');
  }




  // 12. Déclaration de Classes et Objets

  Personne personne1 = Personne('Alice', 30);
  print('Nom: ${personne1.nom}, Age: ${personne1.age}');



  // 13. Héritage et Polymorphisme

  

  Etudiant etudiant1 = Etudiant('Bob', 20, 'Mathématiques');
  print('Nom: ${etudiant1.nom}, Age: ${etudiant1.age}, Classe: ${etudiant1.classe}');


  //14. Getters et Setters//
  Personne personne2 = Personne('Astou', 25);
  // Utilisez les setters
  personne2.nom = 'Khady';
  personne2.age = 26;
  
  // Utilisez les getters
  print('Nom: ${personne2.nom}, Age: ${personne2.age}');



// 16. Concepts d’asynchrone en Dart//
  fetchData().then((resultat) {
    print(resultat);
  });

// 17. Utilisation de async et await
  void main() async {
  String resultat = await getData();
  print(resultat);
}

//18. Gestion des Futures et des Streams

Stream<int> flux = Stream.periodic(Duration(seconds: 1), (int count) => count);
  
  flux.listen((data) {
    print('Donnée reçue: $data');
  });


  //19. Calcul de Factorielle
  int factorielle(int n) {
  if (n <= 1) {
    return 1;
  } else {
    return n * factorielle(n - 1);
  }
}


  int nombre = 5;
  print('Factorielle de $nombre est: ${factorielle(nombre)}');
}


// 20. Filtrage de Liste

List<int> filtrerPairs(List<int> nombres) {
  return nombres.where((nombre) => nombre % 2 == 0).toList();
}

void parite() {
  List<int> nombres = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  List<int> pairs = filtrerPairs(nombres);
  print('Nombres pairs: $pairs');
}






// 16. Concepts d’asynchrone en Dart//
Future<String> fetchData() {
  return Future.delayed(Duration(seconds: 2), () => 'Données reçues');
}

// 17. Utilisation de async et await
  Future<String> getData() async {
  await Future.delayed(Duration(seconds: 2));
  return 'Données reçues';
}

class Personne {
  String nom;
  int age;
  
  Personne(this.nom, this.age);

 }





class Etudiant extends Personne {
  String classe;
  
  Etudiant(String nom, int age, this.classe) : super(nom, age);
}

// 14. Getters et Setters //
String get nom => nom;
  set nom(String nom) => nom = nom;
  
  int get age => age;
  set age(int age) => age = age;

