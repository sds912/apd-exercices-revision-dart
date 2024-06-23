String inverser(String chaine) {
  return chaine.split('').reversed.join('');
}

void main() {
  String chaine = "Bonjour";
  String chaineInversee = inverser(chaine);
  print("Chaîne originale : $chaine");
  print("Chaîne inversée : $chaineInversee");
}
