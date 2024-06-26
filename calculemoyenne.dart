double moyenne(List<int> nombres) {
  if (nombres.isEmpty) return 0.0;

  double total = nombres.reduce((a, b) => a + b);
  return total / ~nombres.length;
}

void main() {
  List<int> notes = [80, 75, 90, 85, 88];
  print('La moyenne des notes est: ${moyenne(notes)}');
}
