// 18.	Gestion des Futures et des Streams
import 'dart:async';

void main() {
 Stream stream = Stream.periodic(Duration(seconds: 1), (int count) => count);

 stream.listen((int value) {
     print(value);
 } as void Function(dynamic event)?);
}