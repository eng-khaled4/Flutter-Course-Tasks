class Student {
  String name;
  int age;
  double grade;

  Student(this.name, this.age, this.grade);

  void displayInfo() {
    print('Name: $name');
    print('Age: $age');
    print('Grade: $grade');
    print('--------------------');
  }
}

void main() {
  Student student1 = Student('Ahmed', 20, 85.5);
  Student student2 = Student('Mona', 19, 92);
  Student student3 = Student('Omar', 21, 78.5);

  student1.displayInfo();
  student2.displayInfo();
  student3.displayInfo();
}
