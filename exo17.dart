import 'dart:async';

void main() {
  // Création d'un stream qui émet une valeur toutes les secondes
  Stream<int> stream =
      Stream.periodic(Duration(seconds: 1), (int count) => count);

  // Écoute du stream et affichage de chaque valeur émise
  StreamSubscription<int> subscription = stream.listen((int value) {
    print('Valeur émise : $value');
  });

  // Optionnel : Limiter la durée d'écoute du stream pour cet exemple
  // Cette ligne peut être commentée ou supprimée si vous souhaitez écouter indéfiniment
  Timer(Duration(seconds: 10),
      () => subscription.cancel()); // Annuler l'écoute après 10 secondes
}
