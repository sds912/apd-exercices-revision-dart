import 'mail.dart';

bool validerEmail(String email) {
  var EmailValidator;
  return EmailValidator.validate(email);
}

void main() {
  String exemple1 = 'tony@starkindustries.com';
  String exemple2 = 'abc@invalid';

  print('Exemple 1 est un email valide ? ${validerEmail(exemple1)}');
  print('Exemple 2 est un email valide ? ${validerEmail(exemple2)}');
}
