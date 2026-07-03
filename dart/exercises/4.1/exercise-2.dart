void main() {
  List<double> grades = [6, 3];

  String situation = checkGradesSituation(grades);

  switch (situation) {
    case "aproved":
      print("Aprovado");
      break;

    case "recuperation":
      print("Recuperação");
      break;

    case "reproved":
      print("Reprovado");
      break;
  }
}

String checkGradesSituation(List<double> grades) {
  if (grades.length == 0) {
    return "reprovado";
  }

  double total = 0.0;

  for (double grade in grades) {
    total += grade;
  }

  double average = total / grades.length;

  if (average >= 6) {
    return "aproved";
  } else if (average >= 4) {
    return "recuperation";
  } else {
    return "reproved";
  }
}
