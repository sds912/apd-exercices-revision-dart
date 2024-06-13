/*Imports et Exports
15.	Organisation du Code en Modules
•	Créez un fichier calculs.dart contenant une fonction carre qui calcule le carré d'un nombre.
•	Importez ce fichier dans un autre fichier main.dart et utilisez la fonction carre.*/
int carre(int a) {
  return a * a;
}
/*L’asynchrone
16.	Concepts d’asynchrone en Dart
•	Écrivez une fonction fetchData qui simule une opération asynchrone en utilisant 
Future.delayed pour attendre 2 secondes avant de retourner une chaîne de caractères
 "Données reçues".
•	Appelez fetchData et affichez le résultat après que l'opération asynchrone soit terminée.
*/
Future<String> fetchData() {
  return Future.delayed(Duration(seconds: 2), () => 'Données reçues');
}

/*17.	Utilisation de async et await
•	Modifiez la fonction fetchData pour qu'elle utilise les mots-clés async et await.
•	Écrivez une fonction main asynchrone qui appelle fetchData et affiche le résultat.*/
Future<String> fetchData1() async {
  return await Future.delayed(Duration(seconds: 2), () => 'Données reçues avec succées');
}

/*18.	Gestion des Futures et des Streams
•	Écrivez une fonction qui écoute un stream de données en utilisant un Stream.periodic 
qui émet des valeurs toutes les secondes.
•	Affichez chaque valeur émise par le stream.*/

//import 'dart:async';
// Fonction qui retourne un Stream émettant des valeurs toutes les secondes
Stream<int> generateStream() {
  return Stream.periodic(Duration(seconds: 1), (computationCount) => computationCount);
}

// Fonction pour écouter le Stream et afficher chaque valeur
void listenToStream() {
  Stream<int> stream = generateStream();
  
  stream.listen((value) {
    print('Valeur émise: $value');
  });
}