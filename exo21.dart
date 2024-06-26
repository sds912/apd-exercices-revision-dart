bool rechercher(List<String> liste, String recherche) {
  // Parcourir chaque élément dans la liste
  for (String element in liste) {
    // Vérifier si l'élément correspond à la chaîne de recherche
    if (element == recherche) {
      return true; // Retourner true si la chaîne de recherche est trouvée
    }
  }
  return false; // Retourner false si la chaîne de recherche n'est pas trouvée
}

void main() {
  // Exemple d'utilisation de la fonction rechercher
  List<String> liste = ["pomme", "banana", "orange", "ananas"];
  String recherche1 = "banana";
  String recherche2 = "goyave";

  // Rechercher la chaîne de recherche1 dans la liste
  bool resultat1 = rechercher(liste, recherche1);
  print("$recherche1 trouvé dans la liste : $resultat1");

  // Rechercher la chaîne de recherche2 dans la liste
  bool resultat2 = rechercher(liste, recherche2);
  print("$recherche2 trouvé dans la liste : $resultat2");
}
