import 'Student.dart';

class DataStudent {
  // String _name = "";
  List<Student> _listStudent = [];

  void showAllStudent() {
    print("\tStudent Name".padRight(25) +
        "Age\t\tHeight\t\tWeight\t\tStart_Year");
    print(
        "--------------------------------------------------------------------------------------------");
    for (int i = 0; i < _listStudent.length; i++) {
      print(
          "${i + 1}.\t${_listStudent[i].getName.padRight(23)}\t${_listStudent[i].getAge}\t\t${_listStudent[i].getHeight}\t\t${_listStudent[i].getWeight}\t\t${_listStudent[i].getStartlearn}");
    }
    print(
        "--------------------------------------------------------------------------------------------");
  }

  void showBMI() {
    List<double> heigh = [];
    List<double> bmi = [];
    print("\tStudent Name".padRight(25) + "BMI");
    print("-----------------------------------------");
    for (int i = 0; i < _listStudent.length; i++) {
      heigh.add(_listStudent[i].getWeight / 100);
      bmi.add(_listStudent[i].getHeight / (heigh[i] * heigh[i]));
      print(
          "${i + 1}.\t${_listStudent[i].getName.padRight(23)} ${bmi[i].toStringAsFixed(2)}");
    }
    print("-----------------------------------------");
  }

  void howmany_year() {
    int year = 0;
    print("\tStudent Name".padRight(25) + "Year");
    print("-----------------------------------------");

    for (int i = 0; i < _listStudent.length; i++) {
      year = (DateTime.now().year - _listStudent[i].getStartlearn).toInt();
      print("${i + 1}.\t${_listStudent[i].getName.padRight(23)} ${year}");
    }
    print("-----------------------------------------");
  }

  void addStudentList(List<Student> ListStudent) {
    this._listStudent.addAll(ListStudent);
  }

  double avg_Height() {
    double sumHeight = 0;
    for (Student student in _listStudent) {
      sumHeight += student.getHeight;
    }
    return sumHeight / _listStudent.length;
  }

  double avg_Weight() {
    double sumWeight = 0;
    for (Student student in _listStudent) {
      sumWeight += student.getWeight;
    }
    return sumWeight / _listStudent.length;
  }
}

