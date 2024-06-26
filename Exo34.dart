class CompteBancaire {
  double solde;

  // Constructeur pour initialiser le solde
  CompteBancaire(this.solde);

  // Méthode pour déposer de l'argent
  void deposer(double montant) {
    solde += montant;
    print("Dépôt de $montant effectué. Nouveau solde : $solde");
  }

  // Méthode pour retirer de l'argent
  void retirer(double montant) {
    if (montant <= solde) {
      solde -= montant;
      print("Retrait de $montant effectué. Nouveau solde : $solde");
    } else {
      print("Fonds insuffisants pour retirer $montant");
    }
  }

  // Méthode pour vérifier le solde
  void verifierSolde() {
    print("Solde actuel : $solde");
  }
}

// Exemple d'utilisation de la classe CompteBancaire
void main() {
  CompteBancaire monCompte = CompteBancaire(
      1000.0); // Création du compte avec un solde initial de 1000
  monCompte.verifierSolde(); // Vérification du solde initial
  monCompte.deposer(500.0); // Dépôt de 500
  monCompte.retirer(200.0); // Retrait de 200
  monCompte
      .retirer(2000.0); // Tentative de retrait de 2000 (fonds insuffisants)
}

//Cette classe CompteBancaire a un attribut solde pour représenter le solde du compte. 
//Elle a des méthodes deposer et retirer pour effectuer ces opérations sur le compte, et une méthode verifierSolde 
//pour vérifier le solde actuel.