double convertirEnFahrenheit(double temperatureCelsius) {
  return (temperatureCelsius * 9 / 5) + 32;
}

void main() {
  double temperatureCelsius = 20.0;
  double temperatureFahrenheit = convertirEnFahrenheit(temperatureCelsius);

  print("$temperatureCelsius °C équivaut à $temperatureFahrenheit °F");
}
