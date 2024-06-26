Map<String, double> statistiques(List<double> liste) {
  if (liste.isEmpty) {
    return {'min': 0, 'max': 0, 'moyenne': 0};
  }

  double min =
      liste.reduce((value, element) => value < element ? value : element);
  double max =
      liste.reduce((value, element) => value > element ? value : element);
  double moyenne =
      liste.reduce((value, element) => value + element) / liste.length;

  return {'min': min, 'max': max, 'moyenne': moyenne};
}

void main() {
  List<double> nombres = [3, 7, 2, 8, 5, 1, 9, 4, 6];
  Map<String, double> resultats = statistiques(nombres);

  print('Minimum: ${resultats['min']}');
  print('Maximum: ${resultats['max']}');
  print('Moyenne: ${resultats['moyenne']}');
}
