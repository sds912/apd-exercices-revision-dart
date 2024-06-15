import 'dart:math';

void main() {
  void generernombresaleatoire() {
    Random random = new Random();
    for (int i = 0; i < 5; i++) {
      print(random.nextInt(100) + 1);
    }
  }

  generernombresaleatoire();
}
