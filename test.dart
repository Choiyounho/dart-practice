import 'dart:math';

void main() {
  var text = 'Hello World';

  print(text);

  print(add(10, 20));

  var randomNumber = Random.secure().nextInt(100);
  print('랜덤으로 뽑은 숫자 [$randomNumber] 이 20 보다 크다면 True 출력, 아니면 false 출력');
  if (randomNumber > 20) {
    print("True");
  } else {
    print("false");
  }

  switch (randomNumber) {
    case > 90:
      print("스위치문 90 이상의 숫자");
    case > 70:
      print("스위치문 70보다 크고 90 이하인 숫자");
    case 3:
      print("스위치문 3");
    default:
      print("그 외 다른 조건들");
  }

  for (int i = 0; i < 5; i++) {
    print("현재: $i");
  }
}

int add(int num1, int num2) {
  return num1 + num2;
}
