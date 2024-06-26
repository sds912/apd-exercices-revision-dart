class Complexe {
  double reel;
  double imaginaire;

  Complexe(this.reel, this.imaginaire);

  Complexe addition(Complexe autre) {
    double nouveauReel = this.reel + autre.reel;
    double nouveauImaginaire = this.imaginaire + autre.imaginaire;
    return Complexe(nouveauReel, nouveauImaginaire);
  }

  Complexe multiplication(Complexe autre) {
    double nouveauReel =
        this.reel * autre.reel - this.imaginaire * autre.imaginaire;
    double nouveauImaginaire =
        this.reel * autre.imaginaire + this.imaginaire * autre.reel;
    return Complexe(nouveauReel, nouveauImaginaire);
  }

  @override
  String toString() {
    if (imaginaire >= 0) {
      return '$reel + ${imaginaire}i';
    } else {
      return '$reel - ${-imaginaire}i';
    }
  }
}

void main() {
  Complexe c1 = Complexe(3, 4);
  Complexe c2 = Complexe(1, -2);

  Complexe somme = c1.addition(c2);
  Complexe produit = c1.multiplication(c2);

  print('La somme de $c1 et $c2 est $somme');
  print('Le produit de $c1 et $c2 est $produit');
}
