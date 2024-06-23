void main() {
  DateTime maintenant = DateTime.now();
  DateTime futur = maintenant.add(Duration(days: 7));

  print('Date et heure actuelles : $maintenant');
  print('Date et heure dans 7 jours : $futur');
}
