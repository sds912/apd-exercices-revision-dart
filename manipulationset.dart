

// 36.	Manipulation de Set


void main() {
 Set numbers = Set();

 
 numbers.add(1);
 numbers.add(2);
 numbers.add(3);
 numbers.add(4);

 print("Contenu initial du Set : $numbers");

 
 numbers.remove(2);

 
 print("Contenu final du Set : $numbers");

 // 37.	Inversion de Chaîne
String inverser(String chaine) {
 String chaineInverse = '';
 
 for (int i = chaine.length - 1; i >= 0; i--) {
     chaineInverse += chaine[i];
 }
 
 return chaineInverse;
}







}

