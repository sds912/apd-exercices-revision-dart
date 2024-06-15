void main() {
  Map<String, num> statistiques(List<num> liste) {
    return {
      'min': liste.reduce((a, b) => a < b ? a : b),
      'max': liste.reduce((a, b) => a > b ? a : b),
      'moyenne': liste.reduce((a, b) => a + b) / liste.length
    };
  }

  print(statistiques([2, 4, 5, 0, 9, 6]));
}
