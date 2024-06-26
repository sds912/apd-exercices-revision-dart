bool estPalindrome(String chaine) {
  chaine = chaine
      .toLowerCase(); // Convertir la chaîne en minuscules pour ignorer la casse
  chaine = chaine.replaceAll(" ", ""); // Supprimer les espaces de la chaîne

  // Vérifier si la chaîne est égale à sa version inversée
  if (chaine == chaine.split('').reversed.join()) {
    return true;
  } else {
    return false;
  }
}

void main() {
  String chaineTest = "Esope reste ici et se repose";
  if (estPalindrome(chaineTest)) {
    print("La chaîne '$chaineTest' est un palindrome.");
  } else {
    print("La chaîne '$chaineTest' n'est pas un palindrome.");
  }
}
