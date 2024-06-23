void main() {
  // Date et heure actuelles
  DateTime maintenant = DateTime.now();
  print('Date et heure actuelles : $maintenant');

  // Date et heure dans 7 jours
  DateTime dans7Jours = maintenant.add(Duration(days: 7));
  print('Date et heure dans 7 jours : $dans7Jours');
}
