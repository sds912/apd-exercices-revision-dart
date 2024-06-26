void main() {
  // Fonction de division qui gère l'exception de division par zéro
  double division(double a, double b) {
    if (b == 0) {
      throw Exception('Division par zéro n\'est pas permise.');
    }
    return a / b;
  }

  // Test de la fonction de division
  try {
    double resultat =
        division(10, 0); // Changez les valeurs pour tester différents cas
    print('Le résultat de la division est: $resultat');
  } catch (e) {
    print('Erreur: $e');
  }
}

//Dans ce code :
//double division(double a, double b) définit une fonction nommée division qui prend deux paramètres
// a et b de type double.
//if (b == 0) { throw Exception('Division par zéro n\'est pas permise.'); } vérifie si le dénominateur b est zéro et,
// si c'est le cas, lance une exception avec un message approprié.
//return a / b; retourne le résultat de la division si le dénominateur n'est pas zéro.
//Le bloc try appelle la fonction division avec les valeurs fournies et affiche le résultat.
//Le bloc catch attrape l'exception si elle est lancée et affiche un message d'erreur.