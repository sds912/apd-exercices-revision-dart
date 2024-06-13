// 30. Classe Complexe
class Complexe {
  double reel;
  double imaginaire;

  Complexe(this.reel, this.imaginaire);

  Complexe operator +(Complexe autre) {
    return Complexe(reel + autre.reel, imaginaire + autre.imaginaire);
  }

  Complexe operator *(Complexe autre) {
    double nouveauReel = reel * autre.reel - imaginaire * autre.imaginaire;
    double nouvelImaginaire = reel * autre.imaginaire + imaginaire * autre.reel;
    return Complexe(nouveauReel, nouvelImaginaire);
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

// 31. Statistiques de Liste
Map<String, num> statistiques(List<num> nombres) {
  if (nombres.isEmpty) return {};

  num min = nombres.reduce((a, b) => a < b ? a : b);
  num max = nombres.reduce((a, b) => a > b ? a : b);
  num moyenne = nombres.reduce((a, b) => a + b) / nombres.length;

  return {'min': min, 'max': max, 'moyenne': moyenne};
}

// 32. Suppression des Doublons
List<T> supprimerDoublons<T>(List<T> liste) {
  return liste.toSet().toList();
}

// 33. Conversion de Listes en Map
Map<K, V> convertirEnMap<K, V>(List<K> cles, List<V> valeurs) {
  Map<K, V> resultat = {};
  for (int i = 0; i < cles.length; i++) {
    resultat[cles[i]] = valeurs[i];
  }
  return resultat;
}

// 34. Classe pour Gestion de Banque
class CompteBancaire {
  double solde = 0;

  void deposer(double montant) {
    solde += montant;
  }

  void retirer(double montant) {
    if (montant <= solde) {
      solde -= montant;
    } else {
      print('Solde insuffisant');
    }
  }

  double verifierSolde() {
    return solde;
  }
}

// 35. Filtrage de Chaînes par Longueur
List<String> filtrerLongueur(List<String> chaines, int n) {
  return chaines.where((chaine) => chaine.length > n).toList();
}

// 36. Manipulation de Set
void manipulationSet() {
  Set<int> nombres = {1, 2, 3, 4, 5};
  print('Set initial: $nombres');

  nombres.add(6);
  print('Set après ajout: $nombres');

  nombres.remove(3);
  print('Set après suppression: $nombres');
}

void main() {
  // Exemples d'utilisation des fonctions et de la classe

  // 30. Classe Complexe
  Complexe c1 = Complexe(2, 3);
  Complexe c2 = Complexe(1, -2);
  print('Somme des complexes: ${c1 + c2}');
  print('Produit des complexes: ${c1 * c2}');

  // 31. Statistiques de Liste
  List<num> listeNombres = [1, 2, 3, 4, 5];
  print('Statistiques de la liste: ${statistiques(listeNombres)}');

  // 32. Suppression des Doublons
  List<int> listeDoublons = [1, 2, 3, 1, 2, 4];
  print('Liste sans doublons: ${supprimerDoublons(listeDoublons)}');

  // 33. Conversion de Listes en Map
  List<String> cles = ['a', 'b', 'c'];
  List<int> valeurs = [1, 2, 3];
  print('Map résultante: ${convertirEnMap(cles, valeurs)}');

  // 34. Classe pour Gestion de Banque
  CompteBancaire compte = CompteBancaire();
  compte.deposer(100);
  compte.retirer(50);
  print('Solde du compte: ${compte.verifierSolde()}');

  // 35. Filtrage de Chaînes par Longueur
  List<String> chaines = ['apple', 'banana', 'orange', 'grape'];
  int longueur = 5;
  print('Chaines filtrées: ${filtrerLongueur(chaines, longueur)}');

  // 36. Manipulation de Set
  manipulationSet();
}
