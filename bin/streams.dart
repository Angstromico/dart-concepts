void main() {
  final numberStream = emitNumbers(5);

  numberStream.listen(
    (number) => print('Received: $number'),
    onDone: () => print('Stream is done!'),
    onError: (error) => print('Error: $error'),
  );
}

Stream<int> emitNumbers(int n) async* {
  for (int i = 0; i < n; i++) {
    await Future.delayed(Duration(seconds: 1)); // Simulate some delay
    yield i; // Emit the next number in the stream
  }
}