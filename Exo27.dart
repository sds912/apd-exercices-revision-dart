// Fonction pour vérifier si une chaîne est un palindrome
bool estPalindrome(String chaine) {
  String chaineInverse = chaine.split('').reversed.join('');
  return chaine == chaineInverse;
}

// Exemple d'utilisation de la fonction estPalindrome
void main() {
  String chaine1 = "radar"; // Palindrome
  String chaine2 = "bonjour"; // Non palindrome
  print("$chaine1 est un palindrome : ${estPalindrome(chaine1)}");
  print("$chaine2 est un palindrome : ${estPalindrome(chaine2)}");
}

//Cette fonction estPalindrome prend une chaîne de caractères en entrée. Elle inverse la chaîne à l'aide de split('')
 //pour la diviser en une liste de caractères, reversed pour inverser l'ordre de la liste, et join('') pour fusionner 
 //la liste inversée en une chaîne. Ensuite, elle vérifie si la chaîne originale est égale à la chaîne inversée, 
 //et retourne true si c'est le cas, sinon false.