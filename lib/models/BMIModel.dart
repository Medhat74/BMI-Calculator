class BMIModel{
  double height;
  double weight;
  double? result;
  int age;
  String? gender;

  BMIModel(this.height, this.weight, this.age);

  void calculateBMI(){
    double h = height /100;
    result = weight / (h *h );
    print(result);
  }
}