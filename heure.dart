import 'dart:convert';

void main() {
  DateTime maintenant = DateTime.now();
  print('Date et heure actuelles: $maintenant');

  DateTime dateDans7Jours = maintenant.add(Duration(days: 7));
  print('Date et heure dans 7 jours: $dateDans7Jours');
}
