class CompteBancaire {
  String titulaire;
  double _solde;

  CompteBancaire(this.titulaire, [this._solde = 0.0]);

  // Méthode pour déposer de l'argent
  void deposer(double montant) {
    if (montant > 0) {
      _solde += montant;
      print('Dépôt de $montant effectué. Solde actuel: $_solde');
    } else {
      print('Le montant de dépôt doit être positif.');
    }
  }

  // Méthode pour retirer de l'argent
  void retirer(double montant) {
    if (montant > 0 && montant <= _solde) {
      _solde -= montant;
      print('Retrait de $montant effectué. Solde actuel: $_solde');
    } else if (montant > _solde) {
      print('Fonds insuffisants pour ce retrait.');
    } else {
      print('Le montant de retrait doit être positif.');
    }
  }

  // Méthode pour vérifier le solde
  double verifierSolde() {
    return _solde;
  }
}

void main() {
  CompteBancaire compte = CompteBancaire('Jean Dupont', 100.0);

  print('Titulaire du compte: ${compte.titulaire}');
  print('Solde initial: ${compte.verifierSolde()}');

  compte.deposer(50.0);
  compte.retirer(30.0);
  compte.retirer(150.0);
  compte.deposer(-20.0);
  compte.retirer(-10.0);

  print('Solde final: ${compte.verifierSolde()}');
}
