void main() {
  // Déclaration de Variables
  String nom = "Mansour";
  int age = 20;

  // Types de Variables
  double pi = 3.14;
  bool isFlutterAwesome = true;

  // Variables Finales et Constantes
  final String nomComplet = "mansour sow";
  const vitesseLumiere = 299792458;

  // Affichage des variables
  print("Nom: $nom");
  print("Âge: $age");
  print("Valeur de pi: $pi");
  print(isFlutterAwesome);
  print("Nom complet: $nomComplet");
  print("Vitesse de la lumière: $vitesseLumiere");

  // Conditions (if, else)
  verifierNombre(1);
  verifierNombre(-7);
  verifierNombre(0);

  // Boucles (for, while)
  print("Nombres de 1 à 10 :");
  afficherNombresFor();
  print("Nombres de 10 à 1 :");
  afficherNombresWhile();

  // Gestion des Exceptions
  try {
    print("Résultat de la division : ${division(10, 2)}");
    print("Résultat de la division : ${division(10, 0)}");
  } catch (e) {
    print("Une erreur s'est produite : $e");
  }

  // Recherche dans une Liste
  List<String> liste = ["lemon", "banane", "orange", "por"];
  String chaineRecherche1 = "orange";
  String chaineRecherche2 = "pomme";

  bool resultat1 = rechercher(liste, chaineRecherche1);
  bool resultat2 = rechercher(liste, chaineRecherche2);

  print('Chaine "$chaineRecherche1" trouvée dans la liste : $resultat1');
  print('Chaine "$chaineRecherche2" trouvée dans la liste : $resultat2');

  // Vérification de palindrome
  String chaine1 = "radar";
  String chaine2 = "Bonjour";

  print('$chaine1 est un palindrome : ${estPalindrome(chaine1)}');
  print('$chaine2 est un palindrome : ${estPalindrome(chaine2)}');

  // Nombres complexes
  Complexe c1 = Complexe(3.0, 2.0);
  Complexe c2 = Complexe(1.0, 7.0);

  Complexe somme = c1 + c2;
  print('Somme : $somme'); // Affiche: Somme : 4.00 + 9.00i

  Complexe produit = c1 * c2;
  print('Produit : $produit'); // Affiche: Produit : -11.00 + 23.00i

  // Manipulation de Set
  Set<int> nombres = {1, 2, 3, 4, 5};

  print("Set initial : $nombres");

  nombres.add(6);
  nombres.add(7);
  print("Set après ajout : $nombres");

  nombres.add(3);
  print("Set après tentative d'ajouter un élément existant : $nombres");

  nombres.remove(2);
  nombres.remove(4);
  print("Set après retrait : $nombres");

  print("Contenu final du Set : $nombres");

  // Informations sur un livre
  Livre monLivre = Livre("les nouveaux contes", "amadou coumba", 108);
  monLivre.afficherInformations();

  // Validation d'emails
  String email1 = "amy@example.com";
  String email2 = "go.email@.com";
  String email3 = "sama.@example";

  print('$email1 est un email valide : ${validerEmail(email1)}');
  print('$email2 est un email valide : ${validerEmail(email2)}');
  print('$email3 est un email valide : ${validerEmail(email3)}');
}

// Conditions (if, else)
void verifierNombre(int nombre) {
  if (nombre > 0) {
    print("$nombre est un nombre positif.");
  } else if (nombre < 0) {
    print("$nombre est un nombre négatif.");
  } else {
    print("$nombre est zéro.");
  }
}

// Boucles (for, while)
void afficherNombresFor() {
  for (int i = 1; i <= 10; i++) {
    print(i);
  }
}

void afficherNombresWhile() {
  int nombre = 10;
  while (nombre >= 1) {
    print(nombre);
    nombre--;
  }
}

// Gestion des Exceptions
double division(double dividende, double diviseur) {
  if (diviseur == 0) {
    throw Exception("Division par zéro.");
  }
  return dividende / diviseur;
}

// Recherche dans une Liste
bool rechercher(List<String> liste, String chaineRecherche) {
  for (String chaine in liste) {
    if (chaine == chaineRecherche) {
      return true;
    }
  }
  return false;
}

// Vérification de palindrome
bool estPalindrome(String chaine) {
  chaine = chaine.replaceAll(' ', '').toLowerCase();
  return chaine == chaine.split('').reversed.join('');
}

// Classe de nombres complexes
class Complexe {
  double re; // Partie réelle
  double im; // Partie imaginaire

  Complexe(this.re, this.im);

  Complexe operator +(Complexe autre) {
    return Complexe(this.re + autre.re, this.im + autre.im);
  }

  Complexe operator *(Complexe autre) {
    double newRe = this.re * autre.re - this.im * autre.im;
    double newIm = this.re * autre.im + this.im * autre.re;
    return Complexe(newRe, newIm);
  }

  @override
  String toString() {
    return '${re.toStringAsFixed(2)} + ${im.toStringAsFixed(2)}i';
  }
}

// Classe de livre
class Livre {
  String titre;
  String auteur;
  int nombrePages;

  Livre(this.titre, this.auteur, this.nombrePages);

  void afficherInformations() {
    print("Livre : $titre");
    print("Auteur : $auteur");
    print("Nombre de pages : $nombrePages");
  }
}

// Validation d'email
bool validerEmail(String email) {
  RegExp regex = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
  return regex.hasMatch(email);
}
