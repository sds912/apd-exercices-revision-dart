String inverser(String chaine) {
  return chaine.split('').reversed.join();
}

void main() {
  String chaine = "Exemple de chaîne";
  print("Chaîne originale : $chaine");
  String chaineInverse = inverser(chaine);
  print("Chaîne inversée : $chaineInverse");
}

//Cette fonction inverser utilise les méthodes split pour diviser la chaîne en une liste de caractères,
// reversed pour inverser l'ordre des caractères, puis join pour rejoindre les caractères inversés en une chaîne.