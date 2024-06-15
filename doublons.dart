void main() {
  List<T> Supprimerdoublons<T>(List<T> liste) {
    return liste.toSet().toList();
  }

  print(Supprimerdoublons([1, 6, 1, 7, 7, 9, 0, 5]));
}
