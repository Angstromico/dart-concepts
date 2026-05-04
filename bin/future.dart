void main() {
  print('This will run in the future!');

  Future.delayed(Duration(seconds: 2), () {
    print('This will run after a delay of 2 seconds!');
  });

  print('This will run at the end!');
}