// Fonction pour trier une liste de nombres en ordre croissant
List<num> trier(List<num> nombres) {
  nombres.sort();
  return nombres;
}

// Exemple d'utilisation de la fonction trier
void main() {
  List<num> nombres = [5, 3, 9, 1, 7, 2]; // Liste de nombres
  List<num> listeTrie = trier(nombres); // Tri de la liste
  print("Liste triée : $listeTrie");
}

//Cette fonction trier prend une liste de nombres en entrée. Elle utilise la méthode sort() pour trier les nombres dans 
//la liste en ordre croissant. Enfin, elle retourne la liste triée.