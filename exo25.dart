Map<String, int> filtrerEtudiants(Map<String, int> etudiants) {
  Map<String, int> etudiantsFiltres = {};
  etudiants.forEach((nom, note) {
    if (note > 70) {
      etudiantsFiltres[nom] = note;
    }
  });
  return etudiantsFiltres;
}

void main() {
  Map<String, int> etudiants = {
    'Pathe': 85,
    'Alou': 60,
    'Mai': 75,
    'Malickou': 90
  };

  Map<String, int> etudiantsFiltres = filtrerEtudiants(etudiants);

  print('Étudiants avec une note supérieure à 70 : $etudiantsFiltres');
}
