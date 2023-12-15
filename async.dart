void main() {
  delay(3);
  delay(1);
  delay(5);
}

Future<void> delay(int second) async {
  await Future.delayed(Duration(seconds: second));
  print("$second초 만큼 기다린 후 출력 $second");
}
