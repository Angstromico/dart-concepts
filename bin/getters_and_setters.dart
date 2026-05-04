void main() {
  final square = Square(side: -5);
  print('Area of the square: ${square.area}'); // Output: Area of the square: 25.0
  square.setSide = 10;
  print('New area of the square: ${square.area}'); // Output: New area of the square: 100.0
}

class Square {
  double side;

  Square({required this.side}) {
    assert(side >= 0, 'Side length cannot be negative');
  }

  double get area => side * side;  
  set setSide(double newSide) => {
    if(newSide < 0) throw ArgumentError('Side length cannot be negative'),

    side = newSide
    };
}