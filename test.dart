import 'dart:math';

void main() {
  var text = 'Hello World';

  print(text);

  print(add(10, 20));

  var random = Random.secure().nextInt(100);
  print('랜덤으로 뽑은 숫자 [$random] 이 20 보다 크다면 True 출력, 아니면 false 출력');
  if (random > 20) {
    print("True");
  } else {
    print("false");
  }
}

int add(int num1, int num2) {
  return num1 + num2;
}
