//task1

class Shape {
  calculateArea() {}
}

class Rectangle extends Shape {
  double a;
  double b;
  Rectangle({required this.a, required this.b});
  @override
  calculateArea() {
    print(a * b);
  }
}

class Circle extends Shape {
  double r;
  Circle({required this.r});
  @override
  calculateArea() {
    print(3.14 * (r * r));
  }
}

//task2
class MultiplicationTable {
  int size;
  MultiplicationTable({required this.size});
  void printTable() {
    for (int i = 1; i <= 10; i++) {
      print('$i * $size = ${i * size}');
    }
  }
}

void main() {
  Rectangle a = Rectangle(a: 10, b: 15);
  Rectangle b = Rectangle(a: 7, b: 12);
  Rectangle c = Rectangle(a: 8, b: 15);
  Circle d = Circle(r: 5);
  Circle f = Circle(r: 4);
  Circle g = Circle(r: 9);
  List<Shape> shapes = [a, b, c, d, f, g];
  for (int i = 0; i < shapes.length; i++) {
    shapes[i].calculateArea();
  }
  MultiplicationTable y = MultiplicationTable(size: 6);
  y.printTable();
}
