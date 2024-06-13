/*30.	Classe Complexe
•	Créez une classe Complexe pour représenter des nombres complexes avec des opérations 
d'addition et de multiplication.*/
class NombreComplexe {
  double partieReelle;
  double partieImaginaire;

  // Constructeur
  NombreComplexe( this.partieImaginaire,this.partieReelle);

  //addition de deux nombres complexe
NombreComplexe operator +(NombreComplexe autre){
  double newrelle = partieReelle + autre.partieReelle;
  double newimg = partieImaginaire + autre.partieImaginaire;
  return NombreComplexe(newrelle,newimg);
}

//Multiplication de deux nombres complexe
NombreComplexe operator *(NombreComplexe autre){
  double newrelle = partieReelle * autre.partieReelle - partieImaginaire * autre.partieImaginaire;
  double newimg = partieReelle * autre.partieImaginaire + partieImaginaire * autre.partieReelle;
  return NombreComplexe(newrelle,newimg);
}

// Méthode pour afficher un nombre complexe
  @override
  String toString() {
    if (partieImaginaire >= 0) {
      return '$partieReelle + ${partieImaginaire}i';
    } else {
      return '$partieReelle - ${partieImaginaire.abs()}i';
    }
  }
}




 /*31.	Statistiques de Liste
•	Écrivez une fonction statistiques qui prend une liste de nombres et retourne un map 
avec les statistiques suivantes: min, max, moyenne.*/
Map<String, dynamic> statistiques(List<num> nombres) {
   double min = double.infinity;
  double max = double.negativeInfinity;
  double somme = 0;

  for (int i = 0; i < nombres.length; i++) {
    double nombre = nombres[i].toDouble();
    min = min < nombre ? min : nombre;
    max = max > nombre ? max : nombre;
    somme += nombre;
  }

  double moyenne = somme / nombres.length;

  return {
    'min': min,
    'max': max,
    'moyenne': moyenne,
  };
}


/*32.	Suppression des Doublons
•	Écrivez une fonction supprimerDoublons qui prend une liste et retourne une nouvelle liste sans doublons.*/
List<T> supprimerDoublons<T>(List<T> liste) {
  List<T> result = [];
  for (var element in liste) {
    if (!result.contains(element)) {
      result.add(element);
    }
  }
  return result;
}


/*33.	Conversion de Listes en Map
•	Écrivez une fonction convertirEnMap qui prend deux listes de même longueur (une de clés et une de valeurs) 
et retourne une map.*/
Map<K, V> convertirEnMap<K, V>(List<K> keys, List<V> values){
  keys.length != values.length;
  Map<K, V> map = {};
  for (int i = 0; i < keys.length; i++) {
    map[keys[i]] = values[i];
  }
  return map;
}


/*34.	Classe pour Gestion de Banque
•	Créez une classe CompteBancaire avec des méthodes pour déposer, retirer, et vérifier le solde.*/
class CompteBancaire {
  double _soldeactuel;
  CompteBancaire(this._soldeactuel);
  void deposermonaie(double montant) {
    if (montant > 0) {
      _soldeactuel += montant;
      print('Dépôt de \FCFA${montant.toStringAsFixed(2)} effectué.');
    } else {
      print('Le montant du dépôt insufissant.');
    }
  }
  void retirermonaie(double montant) {
    if (montant > 0) {
      if (montant <= _soldeactuel) {
        _soldeactuel -= montant;
        print('Retrait de \Fcfa${montant.toStringAsFixed(2)} effectué.');
      } else {
        print('Solde insuffisants pour ce retrait.');
      }
    } else {
      print('Le montant du retrait doit être supérieur à zéro.');
    }
  }
  double verifierSolde() {
    return _soldeactuel;
  }
}


/*35.	Filtrage de Chaînes par Longueur
•	Écrivez une fonction filtrerLongueur qui prend une liste de chaînes et un entier n, et 
retourne une nouvelle liste contenant uniquement les chaînes de longueur supérieure à n.*/
List<String> filtrerLongueur(List<String> chaines, int n) {
  List<String> result = [];  // liste pour stocker les chaînes filtrées
  for (String chaine in chaines) {
    if (chaine.length > n) {  //si la longueur de la chaîne est supérieure à n
      
      result.add(chaine);
    }
  }
  return result;
}

/*37.	Inversion de Chaîne
•	Écrivez une fonction inverser qui prend une chaîne de caractères et retourne la chaîne inversée.*/
String inverser(String chaine) {
 
 String chaineInversee = '';
  for (int i = chaine.length - 1; i >= 0; i--) {
    chaineInversee += chaine[i];
  } 
  return chaineInversee;
}




/*38.	Remplacement de Caractères
•	Écrivez une fonction remplacer qui prend une chaîne de caractères, un caractère à remplacer 
et un caractère de remplacement, et retourne la nouvelle chaîne.*/
String remplacer(String chaine, String ancienCaractere, String nouveauCaractere){
  String chaineModifiee = '';
  for (int i = 0; i < chaine.length; i++) {
    // Si le caractère actuel correspond à l'ancienCaractere, ajoute le nouveauCaractere à la chaîne modifiée
    if (chaine[i] == ancienCaractere) {
      chaineModifiee += nouveauCaractere;
    } else {
      // Sinon, ajoute le caractère actuel à la chaîne modifiée
      chaineModifiee += chaine[i];
    }
  }
  return chaineModifiee;
}




/*39.	Classe pour Gestion de Livres
•	Créez une classe Livre avec des attributs pour le titre, l'auteur et le nombre de pages, 
ainsi qu'une méthode pour afficher les informations du livre.*/
class Livre {
  String titre;
  String auteur;
  int nbPags;

  Livre(this.titre, this.auteur, this.nbPags);

  void afficherInfos() {
    print('Titre: $titre');
    print('Auteur: $auteur');
    print('Nombre de pages: $nbPags');
  }
}



/*40.	Validation d'Email
•	Écrivez une fonction validerEmail qui prend une chaîne de caractères et retourne true si
 la chaîne est un email valide, sinon false.*/
bool validerEmail(String email) {
  // Expression régulière pour valider l'email
  RegExp regex = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
  return regex.hasMatch(email);// Vérification de la correspondance de l'email avec l'expression régulière

}




void main() {
  // Création de nombres complexes
  NombreComplexe nbre1 = NombreComplexe(2, 3);
  NombreComplexe nbre2 = NombreComplexe(4, -1);



  // Addition
  NombreComplexe somme = nbre1 + nbre2;
  print('La somme de $nbre1 et $nbre2 est $somme');



  // Multiplication
  NombreComplexe produit = nbre1 * nbre2;
  print('Le produit de $nbre1 et $nbre2 est $produit');




  //31.	Statistiques de Liste
  List<num> listeDeNombres = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  Map<String, dynamic> resultats = statistiques(listeDeNombres);
  print("Statistiques de la liste: $resultats");



  //32.	Suppression des Doublons
  List<int> listeOriginale = [1, 2, 3, 4, 1, 2, 5];
  List<int> listeSansDoublons = supprimerDoublons(listeOriginale);
  print("Liste originale : $listeOriginale");
  print("Liste sans doublons : $listeSansDoublons");



  //33.	Conversion de Listes en Map
  List<dynamic> cles = ['nom', 'age', 'ville'];
  List<dynamic> valeurs = ['Alice', 30, 'Paris'];
  Map<dynamic, dynamic> map = convertirEnMap(cles, valeurs);
  print(map); 



  // 34.	Classe pour Gestion de Banque
  CompteBancaire compte = CompteBancaire(1000000.0);
  print('Solde initial: \FCFA${compte.verifierSolde().toStringAsFixed(2)}');
  compte.deposermonaie(500000.0);
  print('Solde après dépôt: \FCFA${compte.verifierSolde().toStringAsFixed(2)}');
  compte.retirermonaie(300000.0);
  print('Solde après retrait: \FCFA${compte.verifierSolde().toStringAsFixed(2)}');
  compte.retirermonaie(1500000.0);
  print('Solde après tentative de retrait excessif: \FCFA${compte.verifierSolde().toStringAsFixed(2)}');




  //35.	Filtrage de Chaînes par Longueur
  List<String> chaines = ['courte', 'moyenne', 'longue', 'très longue','élégant'];
  int n = 5;
  List<String> result = filtrerLongueur(chaines, n);
  print(result); 





  /*36.	Manipulation de Set
  •	Écrivez un programme qui crée un Set de nombres, y ajoute des éléments, les retire 
  et affiche le contenu final du Set.*/

  // Création d'un Set de nombres
  Set<int> nombres = {1, 2, 3, 4, 5};
  print('Set initial: $nombres');
  nombres.add(7);  // ajouter un élément du Set
  nombres.remove(3);   // Supprimer un élément du Set
  print('Set après suppression: $nombres'); 
  bool contientCinq = nombres.contains(5); //Vérifier la présence d'un élément si le Set contient 5
  print('Le Set contient-il 5 ? $contientCinq'); 




  //37.	Inversion de Chaîne
  String chaine = "Welcome";   // Exemple de chaîne à inverser
  String chaineInversee = inverser(chaine);
  print('Chaîne originale: $chaine');
  print('Chaîne inversée: $chaineInversee');



//38.	Remplacement de Caractères
  String chaine1 = "maison";
  String ancienCaractere = "i";
  String nouveauCaractere = "y";
  // Appeler la fonction remplacer
  String chaineModifiee = remplacer(chaine, ancienCaractere, nouveauCaractere);
  // Afficher la chaîne modifiée
  print('Chaîne originale: $chaine1');
  print('Chaîne modifiée: $chaineModifiee');




  //39.	Classe pour Gestion de Livres
  Livre monLivre = Livre('Sous l\'orage', 'Seydou Badian', 500);
  monLivre.afficherInfos();


  //40.	Validation d'Email
  // Exemples d'e-mails à valider
  List<String> emails = ['test@example.com','test1domain.couk',];

  // Validation des e-mails
  for (String email in emails) {
    print('$email est un email valide : ${validerEmail(email)}');
  }

}




 