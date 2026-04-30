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
  print('Reverse of the set list: ${uniqueNumbers.toList().reversed}'); // (10, 9, 8, 7, 6, 5, 4, 3, 2, 1)

  final reversedUniqueNumbers = uniqueNumbers.toList().reversed.toSet();
  print('Reversed unique numbers set: $reversedUniqueNumbers'); // {10, 9, 8, 7, 6, 5, 4, 3, 2, 1}

  final numbersGreaterThan5 = uniqueNumbers.where((number) => number > 5).toSet();
  print('Numbers greater than 5: $numbersGreaterThan5'); // {6, 7, 8, 9, 10}
}
