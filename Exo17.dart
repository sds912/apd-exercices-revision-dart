// Fonction fetchData modifiée avec async et await
Future<String> fetchData() async {
  // Votre logique de récupération de données asynchrone ici
  await Future.delayed(
      Duration(seconds: 2)); // Simule une attente de 2 secondes
  return "Données récupérées avec succès!";
}

// Fonction main asynchrone
Future<void> main() async {
  String resultat = await fetchData();
  print(resultat);
}
//Cela garantit que la fonction fetchData est exécutée de manière asynchrone, 
//et que main attend que fetchData se termine avant d'afficher le résultat.