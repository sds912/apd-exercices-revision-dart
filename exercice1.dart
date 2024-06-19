import 'dart:io';

void main() {
  // 2 declaration des variabes
  var nom='ibrahima';
  var age=22;
  print(nom);
  print(age);
  // 3 type de variable
  var pi=3.14;
  var isFlotterawesome=true;
  print(pi);
  print(isFlotterawesome);
  // 4 variable finale et constante
  final nomcomplet;
  nomcomplet='ibrahimadieng';
  print(nomcomplet);
  const vitesselumiere=29979258;
  print(vitesselumiere);
  // 5 utilisation des liste
  var nombre = [1,2,3,4,5];
  // ajouter un nombre sur le liste
  nombre.add(6);
  print(nombre);
// 6 utilisation des map
  var Etudiant ={'nom':'ibrahima','age':22,'classe':'apd'};
  // ajouter un element sur le map
  Etudiant['note']=85;
  print(Etudiant);

 // 7  definition et appel de fonction
  print("comment tu t'appelle");
  String? prenom = stdin.readLineSync();// demande de saisir
  print("bonjour $prenom");

  //  8 fonction avec parametre et valeurs de retour
  int addition(int a,int b){
      // declarer une foncton avec dart 
        return a+b;
     }
     var resultat = addition(5,7);
     print(resultat);

  // 9 structure de controle
  var nbr=0;
 if(nbr > 0){
  print('positif');

 }
 else if(nbr < 0){
  print('negatif');

 }
 else {
  print('nul');
 }

 // 10 boucle for et while
 // for
 for (var i=1; i<11; i++){
  print(i);
}
//while
 int i=10;
 
while (i>=1){
  print(i);
  i--;
}

// 11 gestion des exceptions
// ignore: unused_element
double_division(double a,double b){
  if(b==0){
    throw Exception("division par zero impossible ");
  }
  return a/b ;
}

try {
  print(division(10,2));
  print(division(8,0));
}catch (e){
  print(e);
}
}

// ignore: body_might_complete_normally_nullable
Object? division(int i, int j) {
}


