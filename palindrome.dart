void main() {
  bool estpalindrome(String chaine) {
    return chaine == chaine.split('').reversed.join('');
  }

  print(estpalindrome('mama'));
}
