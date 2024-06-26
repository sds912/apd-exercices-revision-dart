import 'dart:async';

// Fonction pour écouter un stream de données émises chaque seconde
void ecouterStream() {
  Stream<int> stream = Stream.periodic(Duration(seconds: 1), (index) => index);
  StreamSubscription<int> subscription;

  // Ecoute du stream et affichage des valeurs émises
  subscription = stream.listen((valeur) {
    print("Valeur émise: $valeur");
  });

  // Optionnel : arrêter l'écoute après un certain temps
  // Future.delayed(Duration(seconds: 10), () {
  //   subscription.cancel();
  // });
}

// Appel de la fonction pour démarrer l'écoute du stream
void main() {
  ecouterStream();
}

//Cette fonction utilise Stream.periodic pour créer un stream qui émet des valeurs incrémentées chaque seconde. 
//Ensuite, elle écoute le stream et affiche chaque valeur émise.
