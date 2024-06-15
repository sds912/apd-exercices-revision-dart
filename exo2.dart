void main() {
  // ignore: unused_local_variable
  var nom;
  // ignore: unused_local_variable
  var age;
  nom = 'Bounama';
  age = 22;
  print(nom);
  print(age);
  // ignore: unused_local_variable
  double pi;
  pi = 3.14;
  print(pi);

  // ignore: unused_local_variable
  bool isFlutterAwesome = true;
  print(isFlutterAwesome);

  final nomComplet;
  nomComplet = 'Bounama Boyguillé';
  print(nomComplet);

  // ignore: unused_local_variable
  const vitesseLumiere = 2299792458;

  print(vitesseLumiere);

  // ignore: unused_local_variable
  List nombre = [1, 2, 3, 4, 5];
  nombre.add(6);
  print(nombre);

  // ignore: unused_local_variable
  Map etudiant = {'Nom': 'Modou', 'Age': 20, 'Classe': 'APD'};
  etudiant['Note'] = 85;
  print(etudiant);

  // ignore: unused_element
  String bonjour(nom) {
    return 'bonjour ${nom}';
  }

  nom = 'Bouna';
  print(bonjour(nom));

  // ignore: unused_element
  int Addition(int a, int b) {
    return a + b;
  }

  var a = 5;
  var b = 7;
  print(Addition(a, b));
}
