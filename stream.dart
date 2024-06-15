import 'dart:async';

void main() {
  // Appel de la fonction qui écoute le stream
  ecouterStream();
}

void ecouterStream() {
  // Création d'un Stream périodique qui émet une valeur chaque seconde
  Stream<int> streamPeriodique =
      Stream.periodic(Duration(seconds: 1), (index) => index);

  // Écoute du stream
  streamPeriodique.listen((donnees) {
    // Affichage de chaque valeur émise par le stream
    print("Valeur émise par le stream chaque seconde : $donnees");
  });
}
