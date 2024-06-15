void main() {
  // Obtenir la date et l'heure actuelles
  DateTime maintenant = DateTime.now();

  // Afficher la date et l'heure actuelles
  print("Date et heure actuelles : $maintenant");

  // Ajouter 7 jours à la date actuelle
  DateTime dateDans7Jours = maintenant.add(Duration(days: 7));

  // Afficher la date et l'heure dans 7 jours
  print("Date et heure dans 7 jours : $dateDans7Jours");
}
