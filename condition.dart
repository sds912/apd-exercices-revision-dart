void verifierNombre(int nombre) {
  if (nombre > 0) {
    print('$nombre est positif.');
  } else if (nombre < 0) {
    print('$nombre est négatif.');
  } else {
    print('$nombre est zéro.');
  }
}

void main() {
  verifierNombre(10);
  verifierNombre(-5);
  verifierNombre(0);
}
