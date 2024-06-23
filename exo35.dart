List<String> filtrerLongueur(List<String> chaines, int n) {
  List<String> result = [];
  for (String chaine in chaines) {
    if (chaine.length > n) {
      result.add(chaine);
    }
  }
  return result;
}

void main() {
  List<String> exemples = ["goyave", "banane", "kiwi", "mango", "orange"];
  int longueurMin = 5;

  List<String> resultat = filtrerLongueur(exemples, longueurMin);

  print("Chaînes de longueur supérieure à $longueurMin : $resultat");
}
