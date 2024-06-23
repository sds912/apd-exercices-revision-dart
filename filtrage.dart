List<int> filtrerPairs(List<int> nombres) {
  return nombres.where((nombre) => nombre % 2 == 0).toList();
}

void main() {
  print(filtrerPairs([1, 2, 3, 4, 5, 6]));
}
