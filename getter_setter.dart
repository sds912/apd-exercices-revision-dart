import 'dart:io';

void main() {
  Personne personne1 = Personne();
  personne1._nom = 'Mohameth Diagne';
  print(personne1.name);
  Personne personne2 = Personne();
  personne2._age = 23;
  print(personne2.age);
}

class Personne {
  String _nom = '';
  int _age = 0;
  //methode getter
  String get name {
    return _nom;
  }

  int get age {
    return _age;
  }

  // methode setter
  set name(String name) {
    if (name == '') {
      _nom = name;
    }
  }
}
