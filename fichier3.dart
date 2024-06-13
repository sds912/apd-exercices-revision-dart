// 16. Concepts d’asynchrone en Dart
Future<String> fetchData() async {
  await Future.delayed(Duration(seconds: 2));
  return "Données reçues";
}

void main() async {
  // 17. Utilisation de async et await
  String data = await fetchData();
  print(data);

  // 18. Gestion des Futures et des Streams
  Stream<int> myStream = Stream.periodic(Duration(seconds: 1), (int count) => count);
  myStream.take(5).listen((int data) {
    print("Stream: $data");
  });

  // Exercices Pratiques Supplémentaires

  // 19. Calcul de Factorielle
  int factorielle(int n) {
    if (n == 0) {
      return 1;
    }
    return n * factorielle(n - 1);
  }
  print("Factorielle de 5: ${factorielle(5)}");

  // 20. Filtrage de Liste
  List<int> filtrerPairs(List<int> nombres) {
    return nombres.where((nombre) => nombre % 2 == 0).toList();
  }
  List<int> nombres = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  print("Nombres pairs: ${filtrerPairs(nombres)}");

  // 21. Concaténation de Chaînes
  String concatener(String chaine1, String chaine2) {
    return chaine1 + chaine2;
  }
  String chaine1 = "Bonjour, ";
  String chaine2 = "monde!";
  print("Concaténation: ${concatener(chaine1, chaine2)}");
}
