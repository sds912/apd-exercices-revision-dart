String remplacer(String chaine, String aRemplacer, String remplacement) {
  return chaine.replaceAll(aRemplacer, remplacement);
}

void main() {
  String chaine = "Bonjour tout le monde";
  String nouvelleChaine = remplacer(chaine, 'o', 'a');
  print("Chaîne originale : $chaine");
  print("Nouvelle chaîne : $nouvelleChaine");
}
