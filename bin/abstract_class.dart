void main() {
  final bigCircle  = Circle(10);
  final rectangle = Rectangle(5, 3);
  final square = Square(4);

  print('Area of big circle: ${bigCircle.area}');
  print('Description: ${bigCircle.description}');
  print('Type: ${bigCircle.type.metadata}');
  print('Area of rectangle: ${rectangle.area}');
  print('Description: ${rectangle.description}');
  print('Type: ${rectangle.type.metadata}');
  print('Area of square: ${square.area}');
  print('Description: ${square.description}');
  print('Type: ${square.type.metadata}');
  print('Square as JSON: ${square.toJson()}');
}

enum ShapeType {
  polygon('Defined by straight line segments'),
  curve('Defined by mathematical functions like Bezier'),
  primitive('Basic geometric building blocks'),
  compound('Composition of multiple shapes'),
  fractal('Recursive geometric patterns');

  final String metadata;
  const ShapeType(this.metadata);
}

abstract class Shape {
  double get area; // Using a getter is more idiomatic in Dart for properties
  String get description;
  ShapeType get type;
}

class Circle extends Shape {
  final double radius;
  Circle(this.radius);

  @override
  double get area => 3.14159 * radius * radius;

  @override
  String get description => "A perfectly round shape.";

  @override
  ShapeType get type => ShapeType.primitive;
}

class Rectangle extends Shape {
  final double width;
  final double height;

  Rectangle(this.width, this.height);

  @override
  double get area => width * height;

  @override
  String get description => "A shape with four straight sides.";

  @override
  ShapeType get type => ShapeType.polygon;
}

//Using implements instead of extends allows us to create a class that can implement multiple interfaces, which is not possible with extends. This is particularly useful in Dart, where a class can only extend one other class but can implement multiple interfaces. By using implements, we can define a class that adheres to multiple contracts, making our code more flexible and reusable.

// This is a "Contract" or "Interface"
abstract class Serializable {
  Map<String, dynamic> toJson();
}

mixin JsonSerializable on Shape implements Serializable {
  @override
  Map<String, dynamic> toJson() => {
    'type': type.metadata,
    'description': description,
    'area': area,
  };
}

// Square "is a" Shape (inheritance) 
// AND "acts as" Serializable (interface)
class Square extends Shape with JsonSerializable {
  final double side;

  Square(this.side);

  @override
  double get area => side * side;

  @override
  String get description => "A square with sides of $side";

  @override
  ShapeType get type => ShapeType.polygon;
}
