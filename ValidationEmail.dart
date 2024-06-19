// 40.	Validation d'Email
bool validerEmail(String email) {
 // Expression régulière pour valider un email
 RegExp regex = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
 
 // Vérifier si l'email correspond à l'expression régulière
 if (regex.hasMatch(email)) {
     return true;
 } else {
     return false;
 }
}

// Exemple d'utilisation
void main() {
 String email1 = "john.doe@example.com";
 String email2 = "invalidemail";
 
 print(validerEmail(email1)); // true
 print(validerEmail(email2));// false
}