// Fonction pour filtrer les étudiants ayant une note supérieure à 70
Map<int, MapEntry<String, int>> filtrerEtudiants(Map<String, int> etudiants) {
  return etudiants.entries
      .where((entry) => entry.value > 70)
      .map((entry) => MapEntry(entry.key, entry.value))
      .toList()
      .asMap();
}

// Exemple d'utilisation de la fonction filtrerEtudiants
void main() {
  Map<String, int> etudiants = {
    "Aida": 80,
    "Lamine": 65,
    "Cheikh": 90,
    "Maguette": 75,
    "Bounama": 55
  };

  Map<int, MapEntry<String, int>> etudiantsFiltres =
      filtrerEtudiants(etudiants);
  print("Étudiants avec une note supérieure à 70 : $etudiantsFiltres");
}

//Cette fonction filtrerEtudiants prend une map d'étudiants en entrée, puis utilise la méthode entries pour itérer
 //à travers chaque paire clé-valeur. Ensuite, elle utilise where pour filtrer seulement les étudiants ayant
 // une note supérieure à 70. Enfin, elle convertit le résultat en liste et en map pour le retourner.
