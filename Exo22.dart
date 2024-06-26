// Fonction pour rechercher une chaîne de caractères dans une liste
bool rechercher(List<String> liste, String recherche) {
  return liste.contains(recherche);
}

// Exemple d'utilisation de la fonction rechercher
void main() {
  List<String> liste = ["chat", "chien", "oiseau", "poisson"];
  String mot = "chien";
  bool trouve = rechercher(liste, mot);
  if (trouve) {
    print("$mot trouvé dans la liste !");
  } else {
    print("$mot non trouvé dans la liste.");
  }
}
//Cette fonction rechercher prend une liste de chaînes de caractères liste et une chaîne de caractères recherche en entrée. Elle utilise la méthode contains pour vérifier si la chaîne de recherche est présente dans la liste,
// et retourne true si c'est le cas, sinon false.

