double moyenne(List<int> nombres) {
  int somme = nombres.reduce((a, b) => a + b);
  return somme / nombres.length;
}

void main() {
  print(moyenne([17, 20, 13, 14, 15]));
}
