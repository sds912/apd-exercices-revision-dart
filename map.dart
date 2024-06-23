Map<String, int> filtrerEtudiants(Map<String, int> etudiants) {
  return etudiants..removeWhere((key, value) => value <= 70);
}

void main() {
  Map<String, int> etudiants = {'Alice': 80, 'Bob': 65, 'Charlie': 90};
  print(filtrerEtudiants(etudiants));
}
