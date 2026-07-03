void main() {
  var aluno1 = Student(name: 'João', firstGrade: 7.5, secondGrade: 8.0);

  var aluno2 = Student(name: 'Maria', firstGrade: 5.0, secondGrade: 5.5);

  print('Aluno: ${aluno1.name}');
  print('Aprovado: ${aluno1.checkApproval() ? 'Sim' : 'Não'}\n');

  print('Aluno: ${aluno2.name}');
  print('Aprovado: ${aluno2.checkApproval() ? 'Sim' : 'Não'}');
}

class Student {
  String name;

  double firstGrade;
  double secondGrade;

  static const minAverageGradeForApproval = 6.0;

  Student({
    required this.name,
    required this.firstGrade,
    required this.secondGrade,
  });

  bool checkApproval() {
    double averageGrade = (this.firstGrade + this.secondGrade) / 2;

    return averageGrade >= minAverageGradeForApproval;
  }
}
