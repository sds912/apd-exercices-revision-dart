List<String> filtrerLongueur(List<String> liste, int n) {
  return liste.where((element) => element.length > n).toList();
}

void main() {
  List<String> mots = ['apple', 'banana', 'grape', 'kiwi'];
  int longueurMin = 5;

  print(filtrerLongueur(mots, longueurMin)); // Output: [banana]
}
