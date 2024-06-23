List<T> supprimerDoublons<T>(List<T> liste) {
  return liste.toSet().toList();
}

void main() {
  List<int> nombres = [1, 2, 2, 3, 4, 4, 5, 6, 6, 7];
  List<int> sansDoublons = supprimerDoublons(nombres);
  
  print(sansDoublons); // Affiche: [1, 2, 3, 4, 5, 6, 7]
}
