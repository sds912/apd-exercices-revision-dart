import 'dart:async';

// Définition de la fonction fetchData
Future<String> fetchData() async {
  // Utilisation de Future.delayed pour simuler une opération asynchrone
  await Future.delayed(Duration(seconds: 2));

  // Retourne une chaîne de caractères "Données reçues"
  return "Données reçues";
}

void main() {
  // Appel de fetchData et gestion du résultat asynchrone
  fetchData().then((result) {
    print("Résultat de l'opération asynchrone : $result");
  });
}
