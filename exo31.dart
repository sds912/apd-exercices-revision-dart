Map<String, double> statistiques(List<double> nombres) {
  if (nombres.isEmpty) {
    throw ArgumentError("La liste ne peut pas être vide");
  }

  double min = nombres[0];
  double max = nombres[0];
  double somme = 0;

  for (double nombre in nombres) {
    if (nombre < min) {
      min = nombre;
    }
    if (nombre > max) {
      max = nombre;
    }
    somme += nombre;
  }

  double moyenne = somme / nombres.length;

  return {
    'min': min,
    'max': max,
    'moyenne': moyenne
  };
}

void main() {
  List<double> nombres = [5.5, 3.2, 8.1, 4.4, 6.7];

  Map<String, double> stats = statistiques(nombres);

  print('Min: ${stats['min']}');      // Affiche: Min: 3.2
  print('Max: ${stats['max']}');      // Affiche: Max: 8.1
  print('Moyenne: ${stats['moyenne']}');  // Affiche: Moyenne: 5.58
}
