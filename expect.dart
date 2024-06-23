double division(double a, double b) {
  if (b == 0) {
    throw Exception('Le dénominateur ne peut pas être zéro.');
  }
  return a / b;
}

void main() {
  try {
    print(division(10, 2));
    print(division(10, 0));
  } catch (e) {
    print('Erreur: $e');
  }
}
