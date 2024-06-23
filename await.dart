Future<String> fetchData() async {
  await Future.delayed(Duration(seconds: 2));
  return 'Données reçues';
}

void main() async {
  print('Appel de fetchData...');
  String data = await fetchData();
  print(data);
}
