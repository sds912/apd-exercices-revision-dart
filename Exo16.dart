// Fonction fetchData qui simule une opération asynchrone
Future<String> fetchData() async {
  // Simuler une attente de 2 secondes
  await Future.delayed(Duration(seconds: 2));
  // Retourner la chaîne de caractères "Données reçues"
  return 'Données reçues';
}

void main() async {
  // Appeler fetchData et afficher le résultat après que l'opération asynchrone soit terminée
  print('Fetching data...');
  String resultat = await fetchData();
  print('Résultat: $resultat');
}

// Explication

//1. **Définition de fetchData** :
   //- La fonction fetchData retourne un Future<String>, indiquant qu'elle effectuera une opération asynchrone et retournera une chaîne de caractères.
   //- await Future.delayed(Duration(seconds: 2)); simule une attente de 2 secondes en utilisant Future.delayed.
   //- return 'Données reçues'; retourne la chaîne de caractères "Données reçues" après l'attente.

//2. **Appel de fetchData** :
  // - main() est défini comme une fonction async pour pouvoir utiliser await à l'intérieur.
   //- print('Fetching data...'); affiche un message indiquant que les données sont en cours de récupération.
   //- String resultat = await fetchData(); appelle fetchData et attend que l'opération asynchrone se termine,
   // puis stocke le résultat dans la variable resultat.
   //- print('Résultat: $resultat'); affiche le résultat après que l'opération asynchrone soit terminée.