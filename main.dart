// main.dart
import 'calcul.dart';
import 'dart:async';

void main() {
  double nombre = 5;
  double resultat = carre(nombre);

  print('Le carré de $nombre est $resultat');

  // Créez un flux qui émet une valeur toutes les secondes
  final stream = Stream.periodic(Duration(seconds: 1), (count) => count);

  // Écoutons le flux et affichez chaque valeur émise
  final subscription = stream.listen((value) {
    print('la Valeur émise est: $value');
  });

  // Attendons quelques secondes, puis annulez l'écoute du flux
  Future.delayed(Duration(seconds: 5), () {
    subscription.cancel();
    print('Écoute du flux terminée.');
  });
}
