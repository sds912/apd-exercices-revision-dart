// 22. Recherche dans une Liste
bool rechercher(List<String> liste, String chaineRecherche) {
  for (String chaine in liste) {
    if (chaine == chaineRecherche) {
      return true;
    }
  }
  return false;
}

void main() {
  // Test de la fonction rechercher
  List<String> liste = ["goyave", "banane", "orange", "clemente"];
  String chaineRecherche1 = "orange";
  String chaineRecherche2 = "pomme";
  
  bool resultat1 = rechercher(liste, chaineRecherche1);
  bool resultat2 = rechercher(liste, chaineRecherche2);
  
  print('Chaine "$chaineRecherche1" trouvée dans la liste : $resultat1');
  print('Chaine "$chaineRecherche2" trouvée dans la liste : $resultat2');
}
