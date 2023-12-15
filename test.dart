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

  var list = [0, 1, 2, 3, 4, 5];

  print("");
  print("리스트로 반복문");
  for (final index in list) {
    print("현재: $index");
  }

  dynamic isRunning = true;
  dynamic count = 0;

  while (isRunning) {
    if (count >= 3) {
      isRunning = false;
      print('끝');
      break;
    }

    count++;
    print('Running ...');
  }

  do {
    count++;
    print('Running ...');
  } while (count < 5);

  var num = 10;
  try {
    print(num ~/ 0);
  } on UnsupportedError catch(error, stack) {
    print("UnsupportedError");
    print(error);
    print(stack);
  } on TypeError catch(_) {
    print("따로 처리 안 함");
  } catch (error, stack) {
    print("catch");
    print(error);
    print(stack);
    rethrow; // rethrow 사용 시 현재 함수 자체 밖으로 벗어나게됨
  } finally {
    print("예외처리 종료");
  }
}

int add(int num1, int num2) {
  return num1 + num2;
}
