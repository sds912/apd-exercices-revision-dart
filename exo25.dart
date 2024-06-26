List<num> trier(List<num> liste) {
  // Utilisation de la méthode sort pour trier la liste en ordre croissant
  liste.sort();
  return liste;
}

void main() {
  // Exemple d'utilisation de la fonction trier
  List<num> nombres = [5, 2, 9, 1, 5, 6, 12, 10, 40, 33];
  List<num> listeTriee = trier(nombres);

  // Affichage de la liste triée
  print("Liste triée en ordre croissant : $listeTriee");
}
