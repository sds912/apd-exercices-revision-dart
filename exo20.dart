// 20. Filtrage de Liste
List<int> filtrerPairs(List<int> nombres) {
  List<int> nombresPairs = [];
  for (int nombre in nombres) {
    if (nombre % 2 == 0) {
      nombresPairs.add(nombre);
    }
  }
  return nombresPairs;
}

void main() {
  // Test de la fonction filtrerPairs
  List<int> nombres = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  List<int> nombresPairs = filtrerPairs(nombres);
  print('Nombres pairs : $nombresPairs');
}
