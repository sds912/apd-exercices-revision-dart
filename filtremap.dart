void main() {
  // Map d'exemple avec les noms des étudiants et leurs notes
  Map<String, int> etudiants = {
    'Alice': 85,
    'Bob': 60,
    'Charlie': 75,
    'David': 90,
    'Eve': 55,
  };

  // Appel de la fonction pour filtrer les étudiants
  Map<String, int> etudiantsFiltres = filtrerEtudiants(etudiants, 70);

  // Affichage du résultat
  print("Étudiants ayant une note supérieure à 70 : $etudiantsFiltres");
}

// Fonction pour filtrer les étudiants ayant une note supérieure à un seuil donné
Map<String, int> filtrerEtudiants(Map<String, int> etudiants, int seuil) {
  // Création d'une nouvelle map pour stocker les étudiants filtrés
  Map<String, int> etudiantsFiltres = {};

  // Parcourir la map d'étudiants
  etudiants.forEach((nom, note) {
    // Vérifier si la note est supérieure au seuil
    if (note > seuil) {
      etudiantsFiltres[nom] = note;
    }
  });

  // Retourner la map filtrée
  return etudiantsFiltres;
}
