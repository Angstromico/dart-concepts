void main() {
  final numbers = [1, 2, 3, 4, 5, 5, 5, 5, 6, 7, 8, 9, 10, 10, 10];

  print('List of numbers with duplicates: $numbers');
  print('Length of the list: ${numbers.length}');

  final uniqueNumbers = numbers.toSet();
  print('List of unique numbers: $uniqueNumbers');
  print('Length of the unique numbers list: ${uniqueNumbers.length}');

  print(uniqueNumbers.contains(5)); // true
  print(uniqueNumbers.contains(11)); // false
  print('Is the set empty? ${uniqueNumbers.isEmpty}'); // false
  print('First number in the set: ${uniqueNumbers.first}'); // 1
  print('Last number in the set: ${uniqueNumbers.last}'); // 10
  print('Index of number 5: ${uniqueNumbers.toList().indexOf(5)}'); // 4
  print('Index 0 of the set: ${uniqueNumbers.elementAt(0)}'); // 1
  print('Index 5 of the set: ${uniqueNumbers.elementAt(5)}'); // 6
}
