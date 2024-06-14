import 'dart:io';

void main() {
  var nombre = 2;
  if (nombre > 0) {
    print('ce nombre est positif');
  } else if (nombre < 0) {
    print("ce nombre est négatif");
  } else {
    print("ce nombre est nul");
  }
  //for
  var i;
  print("les nombres de 1 à 10 sont");
  for (i = 1; i < 10; i++) {
    print(i);
  }

  //while

  int number = 10;
  print("les nombres de 10 à 1 sont");
  while (number >= 1) {
    print(number);
    number--;
  }

  //Exception
  //Classe et object
  var personne1 = personne('Fatou fall', 24); // creation d'un objet personne

  //Affichage des attributs
  print("le nom est : ${personne1.nom}");
  print("vous avez : ${personne1.age}ans");

  //	Héritage et Polymorphisme

  var Etudiant1 =
      Etudiant('Max Dia', 22, 'APD 4'); // creation d'un objet personne

  //Affichage des attributs
  print("le nom est : ${Etudiant1.nom}");
  print("vous avez : ${Etudiant1.age}ans");
  print("vous êtes en : ${Etudiant1.classe}");

  // asynchrone, on utilise future
  Future<void> recDonnees() async {
    var data = await () async {
      await Future.delayed(Duration(seconds: 2)); // Simulate delay
      return 'Données reçues!';
    }();
    print(data);
  }

  recDonnees();

  //
  Future<void> main() async {
    try {
      final result = await () async {
        await Future.delayed(Duration(seconds: 2)); // Simulate delay
        return 'Données reçues!';
      }();
      print('Received data: $result');
    } catch (e) {
      print('Error fetching data: $e');
    }
    print('Done!');
  }
}

class personne {
  String nom;
  int age;

  // Constructeur
  personne(this.nom, this.age);
}

class Etudiant extends personne {
  String classe;

  //constructeur
  Etudiant(String nom, int age, this.classe) : super(nom, age);
}

Future<String> fetchData() {
  return Future.delayed(Duration(seconds: 2), () => 'Données reçues');
}
