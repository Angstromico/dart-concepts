void main() {
  print(greetEveryone());
  print(greetEveryoneArrow());
  print(sum(1, 2));
  print(optionalSum(1));
}

String greetEveryone() {
  print('Hello, everyone!');
  return 'Greeting sent!';  
}

String greetEveryoneArrow() => 'Hello, everyone!';

int sum(int a, int b) => a + b;

int optionalSum(int a, [int b = 0]) => a + b;