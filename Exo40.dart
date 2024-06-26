bool validerEmail(String email) {
  // Expression régulière pour valider l'email
  RegExp regex = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
  return regex.hasMatch(email);
}

void main() {
  String email1 = "example@example.com";
  String email2 = "invalid_email.com";

  print("Email 1 valide: ${validerEmail(email1)}");
  print("Email 2 valide: ${validerEmail(email2)}");
}

//Cette fonction utilise une expression régulière pour valider l'e-mail. Elle retourne true si la chaîne correspond 
//au motif de l'e-mail valide et false sinon.