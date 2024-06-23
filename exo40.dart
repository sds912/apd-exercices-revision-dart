bool validerEmail(String email) {
  // Expression régulière pour vérifier la structure d'un email
  RegExp regex = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');

  // Vérification de l'email par la regex
  if (regex.hasMatch(email)) {
    return true;
  } else {
    return false;
  }
}

void main() {
  // Exemples d'emails à valider
  String email1 = "papa.diop@example.com";
  String email2 = "sory_email@.com";
  String email3 = "school_email@example";

  // Validation des emails
  print('$email1 est un email valide : ${validerEmail(email1)}');
  print('$email2 est un email valide : ${validerEmail(email2)}');
  print('$email3 est un email valide : ${validerEmail(email3)}');
}
