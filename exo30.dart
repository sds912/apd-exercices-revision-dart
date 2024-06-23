class Complexe {
  double re; // Partie réelle
  double im; // Partie imaginaire

  // Constructeur
  Complexe(this.re, this.im);

  // Addition de deux nombres complexes
  Complexe operator +(Complexe autre) {
    return Complexe(this.re + autre.re, this.im + autre.im);
  }

  // Multiplication de deux nombres complexes
  Complexe operator *(Complexe autre) {
    double newRe = this.re * autre.re - this.im * autre.im;
    double newIm = this.re * autre.im + this.im * autre.re;
    return Complexe(newRe, newIm);
  }

  // Affichage d'un nombre complexe
  @override
  String toString() {
    return '${re.toStringAsFixed(2)} + ${im.toStringAsFixed(2)}i';
  }
}

void main() {
  // Création de deux nombres complexes
  Complexe c1 = Complexe(3.0, 2.0);
  Complexe c2 = Complexe(1.0, 7.0);

  // Addition de deux nombres complexes
  Complexe somme = c1 + c2;
  print('Somme : $somme'); // Affiche: Somme : 4.00 + 9.00i

  // Multiplication de deux nombres complexes
  Complexe produit = c1 * c2;
  print('Produit : $produit'); // Affiche: Produit : -11.00 + 23.00i
}
