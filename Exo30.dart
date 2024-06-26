class Complexe {
  double reel;
  double imaginaire;

  Complexe(this.reel, this.imaginaire);

  // Méthode pour effectuer l'addition de deux nombres complexes
  Complexe addition(Complexe autre) {
    return Complexe(reel + autre.reel, imaginaire + autre.imaginaire);
  }

  // Méthode pour effectuer la multiplication de deux nombres complexes
  Complexe multiplication(Complexe autre) {
    double nouveauReel = reel * autre.reel - imaginaire * autre.imaginaire;
    double nouveauImaginaire =
        reel * autre.imaginaire + imaginaire * autre.reel;
    return Complexe(nouveauReel, nouveauImaginaire);
  }

  // Méthode pour afficher le nombre complexe
  @override
  String toString() {
    if (imaginaire >= 0) {
      return "$reel + ${imaginaire}i";
    } else {
      return "$reel - ${-imaginaire}i";
    }
  }
}

// Exemple d'utilisation de la classe Complexe
void main() {
  Complexe c1 = Complexe(3, 2);
  Complexe c2 = Complexe(1, -4);

  Complexe resultatAddition = c1.addition(c2);
  print("Addition : $resultatAddition");

  Complexe resultatMultiplication = c1.multiplication(c2);
  print("Multiplication : $resultatMultiplication");
}

//Cette classe Complexe a deux attributs pour stocker la partie réelle et imaginaire d'un nombre complexe.
 //Elle a des méthodes addition et multiplication pour effectuer les opérations correspondantes. 
 //La méthode toString est également redéfinie pour afficher correctement le nombre complexe.