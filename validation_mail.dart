bool validerEmail(String email) {
  // Utilisation d'une expression régulière simple pour vérifier le format de l'email
  String pattern = r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$';
  RegExp regex = RegExp(pattern);
  return regex.hasMatch(email);
}

void main() {}
