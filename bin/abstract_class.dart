void main() {
  final bigCircle  = Circle(10);
  final rectangle = Rectangle(5, 3);

  print('Area of big circle: ${bigCircle.area}');
  print('Description: ${bigCircle.description}');
  print('Type: ${bigCircle.type.metadata}');
  print('Area of rectangle: ${rectangle.area}');
  print('Description: ${rectangle.description}');
  print('Type: ${rectangle.type.metadata}');
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