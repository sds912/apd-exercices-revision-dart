void main() {
  double moyenne(List<double> nombres) {
    double s = 0;
    for (int i = 0; i < nombres.length; i++) {
      s = s + nombres[i];
    }
    double moy = s / nombres.length;
    return moy;
  }

  print(moyenne([3, 5, 7]));
}
