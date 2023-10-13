import 'dart:io';

import 'DataStudent.dart';
import 'Student.dart';

void main(List<String> arg) {
  DataStudent std = DataStudent();
  List<Student> students = [
    Student("Darlene Victoria", 20, 165.3, 56.0, 2020),
    Student("Isabella Cara", 21, 157.2, 45.2, 2019),
    Student("Amada Olivia", 21, 163.0, 55.6, 2019),
    Student("Vida Chloe", 20, 158.1, 54.1, 2020),
    Student("Christina Eve", 19, 154.2, 48.3, 2021),
    Student("Dakota Lily", 20, 159.8, 53.7, 2020),
    Student("Jane Fiona", 21, 150.5, 61.8, 2019),
    Student("Vivian Sharon", 20, 171.2, 62.2, 2020),
    Student("Jessica Nora", 20, 165.2, 43.1, 2020),
    Student("Gianna Julia", 21, 165.1, 53.5, 2019),
    Student("Brianna Ruby", 19, 147.2, 42.9, 2021),
    Student("Kimber Rose", 19, 152.3, 62.6, 2021),
    Student("Kira Layla", 20, 164.2, 42.8, 2020),
    Student("Liam Noah", 21, 158.6, 43.3, 2019),
    Student("Aaron Baker", 20, 163.8, 62.1, 2020),
    Student("Braxton Bruce", 21, 168.2, 62.4, 2019),
    Student("Davis Dash", 20, 172.5, 63.2, 2020),
    Student("Francis Harlem", 21, 187.4, 70.7, 2019),
    Student("Harry Potter", 20, 161.7, 50.9, 2020),
    Student("Jackson Kannon", 19, 165.8, 51.5, 2021),
  ];
  std.addStudentList(students);

  while (true) {
    print("---menu---");
    print("[1] ShowAllStudent");
    print("[2] Average Height");
    print("[3] Average Weight");
    print("[4] Body Mass Index : BMI");
    print("[5] How many years did you learn");
    print("[6] Exit");
    stdout.write("Input menu : ");
    int? menu = int.parse(stdin.readLineSync()!);
    switch (menu) {
      case 1:
        std.showAllStudent();
        break;
      case 2:
        print("-----------------------------------------");
        print("Average Height : ${std.avg_Height()}");
        print("-----------------------------------------");
        break;
      case 3:
        print("-----------------------------------------");
        print("Average Weight : ${std.avg_Weight()}");
        print("-----------------------------------------");
        break;
      case 4:
        std.showBMI();
        break;
      case 5:
        std.howmany_year();
      case 6:
        return;
    }
  }
}

