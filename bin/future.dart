void main() {
  print('This will run in the future!');

  Future.delayed(Duration(seconds: 2), () {
    print('This will run after a delay of 2 seconds!');
  });

  print('This will run at the end!');

  fetchData().then((data) {
    print(data);
  }).catchError(  (error) {
    print('An error occurred: $error');
  });
}

Future<String> fetchData() async {
  await Future.delayed(Duration(seconds: 2)); // Simulating a network delay
  return 'Data fetched from the server!';
}