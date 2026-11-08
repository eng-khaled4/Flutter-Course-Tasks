void main() {
  Map<String, dynamic> student = {
    'name': 'Khaled',
    'age': 20,
    'grade': 85.5,
    'isPassed': true,
  };

  print('Student information:');
  student.forEach((key, value) {
    print('$key: $value');
  });

  // Update the student's grade.
  student['grade'] = 92.0;

  print('\nUpdated student information:');
  student.forEach((key, value) {
    print('$key: $value');
  });
}
