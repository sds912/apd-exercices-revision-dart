// 21. Concaténation de Chaînes
String concatener(String chaine1, String chaine2) {
  return chaine1 + chaine2;
}

void main() {
  // Test de la fonction concatener
  String chaine1 = "Hello, ";
  String chaine2 = "classe!";
  String resultat = concatener(chaine1, chaine2);
  print('Résultat de la concaténation : $resultat');
}
