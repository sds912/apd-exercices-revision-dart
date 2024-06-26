// Fonction pour convertir une température de Celsius en Fahrenheit
double convertirEnFahrenheit(double temperatureCelsius) {
  return (temperatureCelsius * 9 / 5) + 32;
}

// Exemple d'utilisation de la fonction convertirEnFahrenheit
void main() {
  double temperatureCelsius = 20; // Température en Celsius
  double temperatureFahrenheit = convertirEnFahrenheit(temperatureCelsius);
  print("$temperatureCelsius°C correspond à $temperatureFahrenheit°F");
}

//Cette fonction convertirEnFahrenheit prend une température en Celsius en entrée, effectue la conversion en utilisant 
//la formule de conversion Celsius vers Fahrenheit, puis retourne la température correspondante en Fahrenheit.