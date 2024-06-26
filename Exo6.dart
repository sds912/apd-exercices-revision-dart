void main() {
  // Création d'une map etudiant avec les clés nom, age, et classe
  Map<String, dynamic> etudiant = {
    'nom': 'Aida Diatta',
    'age': 20,
    'classe': 'Informatique'
  };

  // Ajout d'une clé note avec une valeur de 85 à la map etudiant
  etudiant['note'] = 85;

  // Affichage de la map
  print(etudiant);
}

//Dans ce code :
//Map<String, dynamic> etudiant = {'nom': 'John Doe', 'age': 20, 'classe': 'Informatique'}; 
//crée une map etudiant avec les clés nom, age, et classe et leurs valeurs respectives.
//etudiant['note'] = 85; ajoute une nouvelle clé note avec la valeur 85 à la map etudiant.
//print(etudiant); affiche la map mise à jour.