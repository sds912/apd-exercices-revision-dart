String remplacer(
    String chaine, String caractereAReplacer, String caractereDeRemplacement) {
  return chaine.replaceAll(caractereAReplacer, caractereDeRemplacement);
}

void main() {
  String chaine = "Exemple de chaîne";
  String caractereAReplacer = " ";
  String caractereDeRemplacement = "_";
  String nouvelleChaine =
      remplacer(chaine, caractereAReplacer, caractereDeRemplacement);
  print("Nouvelle chaîne : $nouvelleChaine");
}

//Cette fonction remplacer utilise la méthode replaceAll pour remplacer toutes les occurrences du caractère à
// remplacer par le caractère de remplacement dans la chaîne donnée.