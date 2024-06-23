double convertirEnFahrenheit(double celsius) {
  return celsius * 9 / 5 + 32;
}

void main() {
  double celsius = 25; // Exemple de température en Celsius
  double fahrenheit = convertirEnFahrenheit(celsius);
  print('$celsius°C correspond à $fahrenheit°F');
}
