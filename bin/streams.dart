void main() {
  final numberStream = emitNumbers(5);
  final periodicStream = emitPeriodicNumbers(5, Duration(seconds: 1));

  numberStream.listen(
    (number) => print('Received: $number'),
    onDone: () => print('Stream is done!'),
    onError: (error) => print('Error: $error'),
  );
  periodicStream.listen(
    (number) => print('Periodic Received: $number'),
    onDone: () => print('Periodic Stream is done!'),
    onError: (error) => print('Periodic Error: $error'),
  ); //This only shows "Periodic Stream is done!" that is good?
}

Stream<int> emitNumbers(int n) async* {
  for (int i = 0; i < n; i++) {
    await Future.delayed(Duration(seconds: 1)); // Simulate some delay
    yield i; // Emit the next number in the stream
  }
}

Stream<int> emitPeriodicNumbers(int n, Duration interval) async* {
  yield* Stream.castFrom(  Stream.periodic(interval, (count) => count).take(n));
}