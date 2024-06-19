void main(){

  Map<String, double> statistiques(List<int> nombres) {
  int min = nombres.reduce((a, b) => a < b ? a : b);
  int max = nombres.reduce((a, b) => a > b ? a : b);
  double moyenne = nombres.reduce((a, b) => a + b) / nombres.length;

  return {
    'min': min.toDouble(),
    'max': max.toDouble(),
    'moyenne': moyenne
  };
}
  List<int> nombres = [10, 5, 8, 22, 17];
  Map<String, double> stats = statistiques(nombres);
  print('Statistiques: $stats');



  // 32. Suppression des Doublons //

  List<T> supprimerDoublons<T>(List<T> liste) {
  return liste.toSet().toList();
}
  List<int> nombres1 = [1, 2, 2, 3, 4, 4, 5];
  List<int> unique = supprimerDoublons(nombres1);
  print('Liste sans doublons: $unique');


  // 33. Conversion de Listes en Map//

  Map<K, V> convertirEnMap<K, V>(List<K> cles, List<V> valeurs) {
  if (cles.length != valeurs.length) {
    throw Exception('Les listes de clés et de valeurs doivent avoir la même longueur.');
  }

  return Map.fromIterables(cles, valeurs);
}


  List<String> cles = ['nom', 'age', 'ville'];
  List<dynamic> valeurs = ['Adja', 21, 'Mbour'];
  Map<String, dynamic> map = convertirEnMap(cles, valeurs);
  print('Map: $map');



// 34. Classe CompteBancaire //

 CompteBancaire compte = CompteBancaire();
  compte.deposer(100);
  compte.retirer(50);
  print('Solde actuel: \$${compte.obtenirSolde().toStringAsFixed(2)}');


  // 35. Filtrage de Chaînes par Longueur //

  List<String> filtrerLongueur(List<String> chaines, int n) {
  return chaines.where((chaine) => chaine.length > n).toList();
}


  List<String> chaines = ['chat', 'chien', 'éléphant', 'souris'];
  List<String> longuesChaines = filtrerLongueur(chaines, 5);
  print('Chaînes de longueur > 5: $longuesChaines');


  // 36. Manipulation de Set //

  
  Set<int> nombres2 = {1, 2, 3};
  nombres.add(4);
  nombres.add(5);
  nombres.remove(3);
  
  print('Contenu du set: $nombres');

  // 37. Inversion de Chaîne //

  String inverser(String chaine) {
  return chaine.split('').reversed.join('');
}


  String chaine = 'bonjour';
  String chaineInversee = inverser(chaine);
  print('Chaîne inversée: $chaineInversee');



// 38. Remplacement de Caractères//

String remplacer(String chaine, String aRemplacer, String remplacement) {
  return chaine.replaceAll(aRemplacer, remplacement);
}

  String chaineModifiee = remplacer(chaine, ' ', '_');
  print('Chaîne modifiée: $chaineModifiee');


// 39. Classe Livre //


Livre livre = Livre('Les Misérables', 'Victor Hugo', 1232);
  livre.afficherInfos();


//40. Validation d'Email//

bool validerEmail(String email) {
  String pattern = r'^[^@\s]+@[^@\s]+\.[^@\s]+$';
  RegExp regExp = RegExp(pattern);
  return regExp.hasMatch(email);
}


  String email = 'exemple@example.com';
  bool estValide = validerEmail(email);
  print('Email valide: $estValide');



















}

// 34. Classe CompteBancaire //
class CompteBancaire {
  double _solde = 0.0;

  void deposer(double montant) {
    if (montant > 0) {
      _solde += montant;
      print('Dépôt de \$${montant.toStringAsFixed(2)} réussi.');
    }
  }

  void retirer(double montant) {
    if (montant > 0 && montant <= _solde) {
      _solde -= montant;
      print('Retrait de \$${montant.toStringAsFixed(2)} réussi.');
    } else {
      print('Retrait échoué. Solde insuffisant.');
    }
  }

  double obtenirSolde() {
    return _solde;
  }
}


// 39. Classe Livre
class Livre {
  String titre;
  String auteur;
  int nombreDePages;
  
  Livre(this.titre, this.auteur, this.nombreDePages);
  
  void afficherInfos() {
    print('Titre: $titre');
    print('Auteur: $auteur');
    print('Nombre de pages: $nombreDePages');
  }
}