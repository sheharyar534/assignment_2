class Student {
  late String _name;
  late int _age;
  late double _gpa;
  late String _major;

  String get name => _name;
  set name(String value) {
    if (value == null || value.isEmpty) {
      throw ArgumentError('name cannot null ');
    }
    _name = value;
  }

  int get age => _age;
  set age(int value) {
    if (value <= 0) {
      throw ArgumentError('age must begreater than 0');
    }
    _age = value;
  }

  double get gpa => _gpa;

  set gpa(double value) {
    if (value < 0 || value > 4) {
      throw ArgumentError('gpa must between 0 and 4');
    }
    _gpa = value;
  }

  String get major => _major;
  set major(String value) {
    if (value == null || value.isEmpty) {
      throw ArgumentError('major cant be empty.');
    }
    _major = value;
  }

  String gradLevel() {
    if (_age >= 18 && _age <= 21) {
      return "FRESH";
    } else if (_age >= 22 && _age <= 25) {
      return "sophomore";
    } else if (_age <= 26 && _age <= 35) {
      return "junior";
    } else if (_age >= 36) {
      return "senior";
    }
    return "unknown";
  }
}

void main() {
  Student student = Student();
  student.name = 'sheharyar';
  student.age = 22;
  student.gpa = 3.1;
  student.major = 'computer';

  print("Name:${student.name}");
  print("Age:${student.age}");
  print("Gpa:${student.gpa}");
  print("Major:${student.major}");
  print("Grad:${student.gradLevel()}");
}
