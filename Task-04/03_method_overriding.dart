class Employee {
  String name;

  Employee(this.name);

  void work() {
    print('Employee is working.');
  }
}

class Developer extends Employee {
  Developer(String name) : super(name);

  @override
  void work() {
    print('Developer is writing code.');
  }
}

class Designer extends Employee {
  Designer(String name) : super(name);

  @override
  void work() {
    print('Designer is creating designs.');
  }
}

void main() {
  Developer developer = Developer('Ahmed');
  Designer designer = Designer('Mona');

  developer.work();
  designer.work();
}
