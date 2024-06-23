double moyenne(List<double> nombres) {
  if (nombres.isEmpty) {
    return 0;
  }
  double somme = 0;
  for (var nombre in nombres) {
    somme += nombre;
  }
  return somme / nombres.length;
}

void main() {
  List<double> nombres = [5, 7, 10, 3, 8];
  print('La moyenne des nombres est : ${moyenne(nombres)}');
}
