void main() {
  String inverser(String chaine) {
    return chaine.split('').reversed.join('');
  }

  print(inverser('madame est fatigué'));
}
