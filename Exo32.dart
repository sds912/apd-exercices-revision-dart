// Fonction pour supprimer les doublons d'une liste
List<T> supprimerDoublons<T>(List<T> liste) {
  List<T> resultat = [];
  for (T element in liste) {
    if (!resultat.contains(element)) {
      resultat.add(element);
    }
  }
  return resultat;
}

// Exemple d'utilisation de la fonction supprimerDoublons
void main() {
  List<int> liste = [1, 2, 3, 2, 4, 5, 3, 6]; // Liste avec doublons
  List<int> resultat = supprimerDoublons(liste); // Suppression des doublons
  print("Liste sans doublons : $resultat");
}

//Cette fonction supprimerDoublons prend une liste en entrée. Elle parcourt la liste et ajoute chaque élément à une
 //nouvelle liste resultat uniquement s'il n'est pas déjà présent dans la liste resultat. Elle retourne ensuite 
 //la liste resultat sans doublons.