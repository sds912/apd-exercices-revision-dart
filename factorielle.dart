void main() {
  double Factorielle(double n) {
    double fact = 1;
    for (var i = 1; i <= n; i++) {
      fact = fact * i;
    }
    return fact;
  }

  print(Factorielle(5));

  List<int> filtrerPairs(List<int> L) {
    return L.where((nombre) => nombre % 2 == 0).toList();
  }

  print(filtrerPairs([2, 3, 5, 4, 7, 6]));
}
