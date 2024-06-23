void main() {
  // Utilisation des Listes
  List<int> nombres = [1, 2, 3, 4, 5];
  nombres.add(6);

  // Utilisation des Maps
  Map<String, dynamic> etudiant = {
    'nom': 'Pape',
    'age': 20,
    'classe': 'APD',
  };
  etudiant['note'] = 85;

  // Affichage des Listes et Maps
  print("Liste nombres: $nombres");
  print("Map étudiant: $etudiant");
}
