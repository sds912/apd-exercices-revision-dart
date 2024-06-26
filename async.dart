import 'dart:async';

Future<String> fetchData() {
  return Future.delayed(Duration(seconds: 2), () {
    return "Données reçues";
  });
}

void main() async {
  print("Début de l'opération asynchrone");
  String result = await fetchData();
  print("Résultat de l'opération asynchrone : $result");
}
