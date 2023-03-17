class Circle {
  double? _radius;

  double get radius => _radius!;

  set radius(double value) {
    if (value <= 0) {
      throw ArgumentError("radius must be greater than 0");
    }
    _radius = value;
  }

  double calculateCircumference() {
    return 2 * 3.14 * _radius!;
  }
}

void main() {
  Circle circle = Circle();
  circle.radius = 13.5;
  print('Circle rdius:${circle.radius}');
  print('circle circumference:${circle.calculateCircumference()}');
}
