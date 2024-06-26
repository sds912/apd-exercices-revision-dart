// Fonction pour calculer les statistiques d'une liste de nombres
Map<String, num?> statistiques(List<num> nombres) {
  if (nombres.isEmpty) {
    var map = {
      'min': null,
      'max': null,
      'moyenne': null,
    };
    return map;
  }

  num min = nombres.reduce((current, next) => current < next ? current : next);
  num max = nombres.reduce((current, next) => current > next ? current : next);
  num somme = nombres.reduce((value, element) => value + element);
  num moyenne = somme / nombres.length;

  return {
    'min': min,
    'max': max,
    'moyenne': moyenne,
  };
}

// Exemple d'utilisation de la fonction statistiques
void main() {
  List<num> nombres = [5, 10, 15, 20, 25]; // Liste de nombres
  Map<String, num?> resultats =
      statistiques(nombres); // Calcul des statistiques
  print("Minimum: ${resultats['min']}");
  print("Maximum: ${resultats['max']}");
  print("Moyenne: ${resultats['moyenne']}");
}

//Cette fonction statistiques prend une liste de nombres en entrée. Elle utilise les méthodes reduce pour trouver 
//le minimum et le maximum de la liste, ainsi que la somme de tous les nombres. Ensuite, elle calcule la moyenne en 
//divisant la somme par la longueur de la liste. Elle retourne un map contenant les statistiques calculées.