Map<String, double> filtrerEtudiants(Map<String, double> etudiants) {
  Map<String, double> etudiantsFiltres = {};

  etudiants.forEach((nom, note) {
    if (note > 70) {
      etudiantsFiltres[nom] = note;
    }
  });

  return etudiantsFiltres;
}

void main() {
  // Exemple d'utilisation de la fonction filtrerEtudiants
  Map<String, double> listeEtudiants = {
    'Fatima': 85,
    'Bounama': 60,
    'Adja': 75,
    'Oumy': 90,
    'Marena': 55,
  };

  Map<String, double> etudiantsFiltres = filtrerEtudiants(listeEtudiants);

  // Affichage des étudiants ayant une note supérieure à 70
  print("Étudiants avec une note supérieure à 70 : $etudiantsFiltres");
}
