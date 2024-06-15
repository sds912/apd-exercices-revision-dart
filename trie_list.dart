void main() {
  List<num> trier(List<num> liste) {
    liste.sort();
    return liste;
  }

  print(trier([4, 7, 1, 0, 5, 3]));
}
