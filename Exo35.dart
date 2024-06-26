// Fonction pour filtrer les chaînes de longueur supérieure à n
List<String> filtrerLongueur(List<String> chaines, int n) {
  return chaines.where((chaine) => chaine.length > n).toList();
}

// Exemple d'utilisation de la fonction filtrerLongueur
void main() {
  List<String> chaines = ["chat", "chien", "oiseau", "poisson", "éléphant"];
  int longueurMin = 5;
  List<String> chainesFiltrees = filtrerLongueur(chaines, longueurMin);
  print("Chaînes de longueur supérieure à $longueurMin : $chainesFiltrees");
}

//Cette fonction filtrerLongueur prend une liste de chaînes chaines et un entier n en entrée.
 //Elle utilise la méthode where pour filtrer seulement les chaînes ayant une longueur supérieure à n,
  //puis convertit le résultat en une liste avec toList(). Elle retourne ensuite cette nouvelle liste contenant
  // uniquement les chaînes filtrées.