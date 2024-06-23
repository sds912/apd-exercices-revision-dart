int factorielle(int n) {
  if (n <= 1) {
    return 1;
  } else {
    return n * factorielle(n - 1);
  }
}

void main() {
  print('Factorielle de 5: ${factorielle(5)}');
}
