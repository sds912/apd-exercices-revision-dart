import 'dart:async';

// Fonction fetchData qui simule une opération asynchrone
Future<String> fetchData() async {
  await Future.delayed(Duration(seconds: 2)); // Attendre 2 secondes
  return "Données reçues";
}

void main() async {
  print("Début de l'opération asynchrone");

  // Appeler fetchData et attendre que l'opération asynchrone soit terminée
  String resultat = await fetchData();

  // Afficher le résultat après que l'opération asynchrone soit terminée
  print("Résultat: $resultat");
}
