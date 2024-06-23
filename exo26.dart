List<int> trier(List<int> nombres) {
  // Utilisation de la méthode de tri intégrée à Dart
  nombres.sort();
  return nombres;
}

void main() {
  List<int> nombres = [5, 2, 8, 1, 9, 4, 3, 7, 6];
  List<int> nombresTries = trier(nombres);
  print('Liste triée : $nombresTries');
}
