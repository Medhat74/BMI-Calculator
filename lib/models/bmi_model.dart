class BMIModel{
  double? height;
  int? weight;
  int? age;
  double? result;


  BMIModel.setBMI({this.height, this.weight, this.age});

  calculateBMI(){
    result = weight! / (height! * height!);
  }
}