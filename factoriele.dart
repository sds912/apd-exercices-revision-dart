void main() {
  print(factoriele(5));
}

factoriele(int n) {
  int fact = 1;
  for (int i = 1; i < n + 1; i++) {
    fact = fact * i;
    print(" $n est $fact");
  }
}
