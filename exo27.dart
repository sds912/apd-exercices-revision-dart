bool estPalindrome(String chaine) {
  // Ignorer les espaces et la casse
  chaine = chaine.replaceAll(' ', '').toLowerCase();
  
  // Vérifier si la chaîne est égale à sa version inversée
  return chaine == chaine.split('').reversed.join('');
}

void main() {
  String chaine1 = "radar";
  String chaine2 = "Bonjour";
  
  print('$chaine1 est un palindrome : ${estPalindrome(chaine1)}');
  print('$chaine2 est un palindrome : ${estPalindrome(chaine2)}');
}
