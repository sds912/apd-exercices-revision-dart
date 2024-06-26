void main() {
  print(division(4, 2));
  try {
    var resultat = 4 ~/ 0;
  } catch (e) {
    print(e);
  }
}

division(int a, int b) {
  return a ~/ b;
}
