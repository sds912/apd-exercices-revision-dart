
// 30 Classe Complexe
class Complexe {
 double reel;
 double imaginaire;

 Complexe(this.reel, this.imaginaire);

 Complexe addition(Complexe autre) {
     return Complexe(reel + autre.reel, imaginaire + autre.imaginaire);
 }

 Complexe multiplication(Complexe autre) {
     double nouveauReel = reel * autre.reel - imaginaire * autre.imaginaire;
     double nouveauImaginaire = reel * autre.imaginaire + imaginaire * autre.reel;
     return Complexe(nouveauReel, nouveauImaginaire);
 }

 @override
 String toString() {
     if (imaginaire >= 0) {
         return '$reel + ${imaginaire}i';
     } else {
         return '$reel - ${-imaginaire}i';
     }
 }
}

void main() {
 Complexe c1 = Complexe(2, 3);
 Complexe c2 = Complexe(1, -2);

 Complexe somme = c1.addition(c2);
 Complexe produit = c1.multiplication(c2);

 print('Somme: $somme');
 print('Produit: $produit');
}



//  31Statistiques de Liste
Map statistiques(List liste) {
 double min = liste.reduce((value, element) => value < element ? value : element);
 double max = liste.reduce((value, element) => value > element ? value : element);
 double moyenne = liste.reduce((value, element) => value + element) / liste.length;

 return {
     'min': min,
     'max': max,
     'moyenne': moyenne,
    
 };


 
}

// .	32Suppression des Doublons
List supprimerDoublons(List liste) {
 List newList = [];
 
 for (var element in liste) {
     if (!newList.contains(element)) {
         newList.add(element);
     }
 }
 
 return newList;



 
}


//	Conversion de Listes en Map
 



