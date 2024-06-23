List<int> trier(List<int> nombres) {
  nombres.sort();
  return nombres;
}

void main() {
  print(trier([5, 3, 8, 1, 2]));
}
