List<T> supprimerDoublons<T>(List<T> liste) {
  List<T> listeSansDoublons = [];

  for (T element in liste) {
    if (!listeSansDoublons.contains(element)) {
      listeSansDoublons.add(element);
    }
  }

  return listeSansDoublons;
}

void main() {
  List<int> nombres = [1, 2, 3, 2, 4, 3, 5, 6, 1];
  List<int> nombresSansDoublons = supprimerDoublons(nombres);

  print('Liste originale: $nombres');
  print('Liste sans doublons: $nombresSansDoublons');
}
