String remplacer(
    String chaine, String ancienCaractere, String nouveauCaractere) {
  return chaine.replaceAll(ancienCaractere, nouveauCaractere);
}

void main() {
  String phrase = 'Bonjour le monde';
  String nouvellePhrase = remplacer(phrase, 'o', 'a');
  print(nouvellePhrase); // Output: Banjaur le mande
}
