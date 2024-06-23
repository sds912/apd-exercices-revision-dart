void listenToStream() {
  Stream<int> stream = Stream.periodic(Duration(seconds: 1), (count) => count);

  stream.listen((value) {
    print('Valeur émise: $value');
  });
}

void main() {
  listenToStream();
}
