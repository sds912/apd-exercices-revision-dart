import 'dart:async';

// Fonction fetchData modifiée avec async et await
Future<String> fetchData() async {
  // Utilisation de Future.delayed pour simuler une opération asynchrone
  await Future.delayed(Duration(seconds: 2));

  // Retourne une chaîne de caractères "Données reçues"
  return "Données reçues";
}

// Fonction main asynchrone
void main() async {
  // Appel de fetchData avec await pour attendre la complétion de l'opération asynchrone
  String resultat = await fetchData();

  // Affichage du résultat
  print("Résultat de l'opération asynchrone : $resultat");
}
