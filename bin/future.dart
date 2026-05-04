Future<void> main() async {
  print('This will run in the future!');

  Future.delayed(Duration(seconds: 2), () {
    print('This will run after a delay of 2 seconds!');
  });

  print('This will run at the end!');

  // fetchData().then((data) {
  //   print(data);
  // }).catchError(  (error) {
  //   print('An error occurred: $error');
  // });
  try {
    final data = await fetchData();
    print(data);
  } on Exception {
      print('An exception occurred while fetching data.');
  } catch (error) {
    print('An error occurred: $error');
  } finally {
    print('This will always run, regardless of success or error.');
  }
}

Future<String> fetchData() async {
  await Future.delayed(Duration(seconds: 2)); // Simulating a network delay
  return 'Data fetched from the server!';
}