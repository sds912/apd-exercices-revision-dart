void main() {
  CompteBancaire cp1 = new CompteBancaire(0);
  print('depot: ${cp1.deposer(3000)}');
  print('retrait: ${cp1.retirer(1500)}');
  print('solde: ${cp1.verifiersolde()}');
}

class CompteBancaire {
  double montant;
  CompteBancaire(this.montant);
  double deposer(double solde) {
    montant = montant + solde;
    return solde;
  }

  double retirer(double solde) {
    montant = montant - solde;
    return solde;
  }

  double verifiersolde() {
    return montant;
  }
}
