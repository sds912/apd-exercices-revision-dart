// 16.	Concepts d’asynchrone en Dart

void main() {
 fetchData().then((result) {
     print(result);
 });
}

Future fetchData() {
 return Future.delayed(Duration(seconds: 2), () {
     return "Données reçues";
});
}




