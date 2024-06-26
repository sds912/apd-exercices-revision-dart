import 'dart:io';

void main() {
  print('entrez un nombre :');
  String? input = stdin.readLineSync();

  if (input != null) {
    int? nombre = int.tryParse(input);

    if (nombre! > 0) {
      print('$nombre est positif');
    } else if (nombre < 0) {
      print('$nombre est negatif');
    } else {
      print('$nombre est null');
    }
  }
}
