class CompteBancaire {
  String titulaire;
  double solde;

  CompteBancaire(this.titulaire, this.solde);

  void deposer(double montant) {
    if (montant > 0) {
      solde += montant;
      print('Dépôt de $montant effectué. Nouveau solde : $solde');
    } else {
      print('Le montant du dépôt doit être supérieur à zéro.');
    }
  }

  void retirer(double montant) {
    if (montant > 0) {
      if (solde >= montant) {
        solde -= montant;
        print('Retrait de $montant effectué. Nouveau solde : $solde');
      } else {
        print('Fonds insuffisants.');
      }
    } else {
      print('Le montant du retrait doit être supérieur à zéro.');
    }
  }

  void verifierSolde() {
    print('Solde actuel : $solde');
  }
}

void main() {
  CompteBancaire monCompte = CompteBancaire('John Doe', 1000.0);
  monCompte.verifierSolde();
  monCompte.deposer(500.0);
  monCompte.retirer(200.0);
  monCompte.verifierSolde();
}
