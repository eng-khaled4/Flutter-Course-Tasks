class Employee {
  String name;
  double salary;

  Employee(this.name, this.salary);

  void displayInfo() {
    print('Name: $name');
    print('Salary: $salary');
  }
}

class Developer extends Employee {
  String programmingLanguage;

  Developer(String name, double salary, this.programmingLanguage)
      : super(name, salary);

  @override
  void displayInfo() {
    super.displayInfo();
    print('Programming language: $programmingLanguage');
  }
}

class Designer extends Employee {
  String designTool;

  Designer(String name, double salary, this.designTool)
      : super(name, salary);

  @override
  void displayInfo() {
    super.displayInfo();
    print('Design tool: $designTool');
  }
}

void main() {
  Developer developer = Developer('Ahmed', 15000, 'Dart');
  Designer designer = Designer('Mona', 12000, 'Figma');

  developer.displayInfo();
  print('--------------------');
  designer.displayInfo();
}
