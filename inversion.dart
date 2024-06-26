String inverser(String chaine) {
  return chaine.split('').reversed.join('');
}

void main() {
  String mot = 'hello';
  print(inverser(mot)); // Output: olleh
}
