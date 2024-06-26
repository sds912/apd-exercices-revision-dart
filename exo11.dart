double division(double numerateur, double denominateur) {
  if (denominateur == 0) {
    throw ArgumentError('Le dénominateur ne peut pas être zéro.');
  }
  return numerateur / denominateur;
}

void main() {
  try {
    double result = division(10, 2);
    print('Résultat: $result');
  } catch (e) {
    print('Erreur: $e');
  }

  try {
    double result = division(10, 0);
    print('Résultat: $result');
  } catch (e) {
    print('Erreur: $e');
  }
}
