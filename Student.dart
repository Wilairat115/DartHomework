class Student {
  String _name = "";
  int _age = 0;
  double _weight = 0;
  double _height = 0;
  int _startlearn = 0;

  Student(String name, int age, double weight, double height, int startlearn) {
    this._name = name;
    setAge = age;
    setWeight = weight;
    setHeight = height;
    setStartlearn = startlearn;
  }

  Student.withage(String name, int age, double weight) {
    this._name = name;
    setAge = age;
    setWeight = weight;
  }

  Student.withStartLearn(String name, int startlearn, double heigh) {
    this._name = name;
    setStartlearn = startlearn;
    setHeight = heigh;
  }

  get getName => this._name;

  set setName(name) => this._name = name;

  get getAge => this._age;

  set setAge(age) {
    this._age = age;
    if (this._age < 0) this._age = 0;
  }

  get getHeight => this._height;

  set setHeight(height) {
    this._height = height;
    if (this._height < 0) this._height = 0;
  }

  get getWeight => this._weight;

  set setWeight(weight) {
    this._weight = weight;
    if (this._weight < 0) this._weight = 0;
  }

  get getStartlearn => this._startlearn;

  set setStartlearn(startlearn) {
    this._startlearn = startlearn;
    if (this._startlearn < 0) this._startlearn = 0;
  }
}
