void main() {
//exo2
String nom = "diop";
int age = 30;
//exo3
double pi = 3.14;
bool isFlutterAwesome = true;
//exo4
final String nomComplet = "oumy diop";
const int vitesseLumiere = 299792458;
//exo5
List<int> nombres = [1, 2, 3, 4, 5];
nombres.add(6);
//exo6
Map<String, dynamic> etudiant = {
  'nom': 'oumy diop',
  'age': 21,
  'classe': 'apd'
};
etudiant['note'] = 85;
//exo7
void bonjour(String nom) {
  print("Bonjour, $nom !");
}
bonjour("oumy diop");
//exo8
int addition(int a, int b) {
  return a + b;
}
print(addition(5, 7)); // Affiche: 12
//exo 9
void verifierNombre(int nombre) {
  if (nombre > 0) {
    print("Le nombre est positif");
  } else if (nombre < 0) {
    print("Le nombre est négatif");
  } else {
    print("Le nombre est zéro");
  }
}
//exo10
// Boucle for
for (int i = 1; i <= 10; i++) {
  print(i);
}

// Boucle while
int j = 10;
while (j >= 1) {
  print(j);
  j--;
}
}