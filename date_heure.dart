

// 23.	Manipulation de Date et Heure
void main() {
 DateTime now = DateTime.now();
 DateTime later = now.add(Duration(days: 7));

 print('Date et heure actuelles: $now');
 print('Date et heure dans 7 jours: $later');


 // 24.	Calcul de la Moyenne

 double moyenne(List nombres) {
 double somme = 0;
 
 for (double nombre in nombres) {
     somme += nombre;
 }
 
 return somme / nombres.length;
}

// Exemple d'utilisation

 List nombres = [10.0, 15.0, 20.0, 25.0];
 double resultat = moyenne(nombres);
 
 print('La moyenne des nombres est : $resultat');
}

