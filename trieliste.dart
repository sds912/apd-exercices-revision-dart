void main() {
  List<int> nombres = [4, 2, 7, 1, 3];
  List<int> resultat = trier(nombres);
  print(resultat); // Affiche: [1, 2, 3, 4, 7]
}

List<int> trier(List<int> liste) {
  liste.sort();
  return liste;
}
