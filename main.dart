import 'calculs.dart';


void main() async {
  //une fonction carre 
  int nombre = 4;
  int resultat = carre(nombre);
  print('Le carré de $nombre est: $resultat');


//16.	Concepts d’asynchrone en Dart
  print('Attendez...');
  fetchData().then((data) {
    print(data);
  });

//17.	Utilisation de async et await
print('Attendez quelque second...');
  String data = await fetchData1();
  print(data);
  //18.
  listenToStream();
}