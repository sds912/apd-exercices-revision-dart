// ignore: unused_import
import 'dart:ffi';
import 'dart:io';

void main() {
  print('Veuillez saisir un nombre ');
  // ignore: unused_local_variable
  int nombre = int.parse(stdin.readLineSync()!);
  //print(nombre);
  if (nombre > 0) {
    print('${nombre} est un nombre positif');
  } else if (nombre < 0) {
    print('${nombre} est un nombre négatif');
  } else {
    print('${nombre} est un nombre nul');
  }

  for (int i = 1; i <= 10; i++) {
    print(i);
  }

  // ignore: unused_local_variable
  int i = 10;
  print('boucle while');

  while (i >= 1) {
    print(i);
    i--;
  }

  // ignore: unused_element
  double division(double a, double b) {
    if (b == 0) {
      throw ArgumentError('Le dénominateur ne doit pas être nul');
    }
    return a / b;
  }

  try {
    double resultat = division(4, 0);
    print('resultat de la division ${resultat}');
  } catch (e) {
    print('erreur:${e}');
  }

  Personne personne1 = new Personne();
  print(personne1.nom);
  print(personne1.age);
}

class Personne {
  String nom = 'Modou';
  int age = 21;
}
