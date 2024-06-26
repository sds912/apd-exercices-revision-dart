void main() {
  // Obtention de la date et heure actuelles
  DateTime maintenant = DateTime.now();

  // Affichage de la date et heure actuelles
  print('Date et heure actuelles : $maintenant');

  // Calcul de la date et heure 7 jours plus tard
  DateTime septJoursPlusTard = maintenant.add(Duration(days: 7));

  // Affichage de la date et heure 7 jours plus tard
  print('Date et heure dans 7 jours : $septJoursPlusTard');
}
