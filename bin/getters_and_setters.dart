void main() {
  final square = Square(side: 5);
  print('Area of the square: ${square.area}'); // Output: Area of the square: 25.0
  square.setSide = 10;
  print('New area of the square: ${square.area}'); // Output: New area of the square: 100.0
}

class Square {
  double side = 0;

  Square({required this.side});

  double get area => side * side;  
  set setSide(double newSide) => side = newSide;
}