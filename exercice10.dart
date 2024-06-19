
// 34.	Classe pour Gestion de Banque

class CompteBancaire {
 double solde = 0.0;

 void deposer(double montant) {
     solde += montant;
     print("Dépôt de $montant effectué. Nouveau solde : $solde");
 }

 void retirer(double montant) {
     if (solde >= montant) {
         solde -= montant;
         print("Retrait de $montant effectué. Nouveau solde : $solde");
     } else {
         print("Solde insuffisant pour effectuer le retrait.");
     }
 }

 void verifierSolde() {
     print("Solde actuel : $solde");
 }
}

void main() {
 CompteBancaire compte = CompteBancaire();
 
 compte.deposer(100.0);
 compte.retirer(50.0);
 compte.verifierSolde();
}

// 35.	Filtrage de Chaînes par Longueur
List filtrerLongueur(List listeChaines, int n) {
 List resultat = [];
 
 for (String chaine in listeChaines) {
     if (chaine.length > n) {
         resultat.add(chaine);
     }
 }
 
 return resultat;
}


