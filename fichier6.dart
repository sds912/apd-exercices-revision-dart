// 37. Inversion de Chaîne
String inverser(String chaine) {
  return chaine.split('').reversed.join('');
}

// 38. Remplacement de Caractères
String remplacer(String chaine, String aRemplacer, String remplacement) {
  return chaine.replaceAll(aRemplacer, remplacement);
}

// 39. Classe pour Gestion de Livres
class Livre {
  String titre;
  String auteur;
  int nombrePages;

  Livre(this.titre, this.auteur, this.nombrePages);

  void afficherInfos() {
    print('Titre: $titre, Auteur: $auteur, Nombre de pages: $nombrePages');
  }
}

// 40. Validation d'Email
bool validerEmail(String email) {
  final RegExp regex = RegExp(
      r'^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+(?:\.[a-zA-Z]+)?$');
  return regex.hasMatch(email);
}

void main() {
  // Exemples d'utilisation des fonctions et de la classe

  // 37. Inversion de Chaîne
  String chaine = 'hello world';
  print('Chaîne inversée: ${inverser(chaine)}');

  // 38. Remplacement de Caractères
  String chaineOriginale = 'hello world';
  String aRemplacer = 'o';
  String remplacement = 'a';
  print('Chaîne après remplacement: ${remplacer(chaineOriginale, aRemplacer, remplacement)}');

  // 39. Classe pour Gestion de Livres
  Livre livre = Livre('Le Seigneur des Anneaux', 'J.R.R. Tolkien', 1000);
  livre.afficherInfos();

  // 40. Validation d'Email
  String emailValide = 'example@email.com';
  String emailInvalide = 'invalid.email@.com';
  print('Email valide: ${validerEmail(emailValide)}');
  print('Email invalide: ${validerEmail(emailInvalide)}');
}
