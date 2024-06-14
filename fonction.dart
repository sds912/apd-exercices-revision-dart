// ignore: unused_import
import 'dart:io';

void main() {
  bonjour("Maguette");
  //Addition

  int addition(int a, int b) {
    return a + b;
  }

  int resultat = addition(5, 7);
  print("La somme des deux nombres est $resultat .");
}

void bonjour(String nom) {
  print("Bonjour, $nom !");
}
