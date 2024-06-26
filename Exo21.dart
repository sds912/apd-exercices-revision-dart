// Fonction pour concaténer deux chaînes de caractères
String concatener(String chaine1, String chaine2) {
  return chaine1 + chaine2;
}

// Exemple d'utilisation de la fonction concatener
void main() {
  String chaine1 = "Bonjour ";
  String chaine2 = "monde!";
  String resultat = concatener(chaine1, chaine2);
  print(resultat); // Affiche "Bonjour monde!"
}

//Cette fonction concatener prend deux chaînes de caractères en entrée, les concatène à l'aide de l'opérateur +,
 //puis retourne la chaîne résultante.
