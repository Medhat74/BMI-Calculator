import 'package:flutter/material.dart';
import 'package:session_one/components/gender_widget.dart';
import 'package:session_one/components/height_slider_widget.dart';
import 'package:session_one/core/size_config.dart';
import 'package:session_one/models/bmi_model.dart';
import 'package:session_one/screens/result_screen.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  BMIModel bmiModel = BMIModel.setBMI(height: 100.0, weight: 20, age: 20);
  var ageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff0b0e22),
      appBar: AppBar(
        backgroundColor: const Color(0xff1A1F38),
        title: const Center(
          child: Text(
            "BMI Calculator",
            style: TextStyle(
                color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),
          ),
        ),
      ),

      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GenderWidget("assets/female_vector.png", "Female"),
              GenderWidget("assets/male_vector.png", "Male"),

            ],
          ),

          Container(
            color: const Color(0xff1A1F38),
            child: Column(
              children: [
                Row(
                  children: [
                    Text("HIEGHT"),
                  ],
                ),
                HeightSliderWidget(bmiModel.height!, (value){
                  bmiModel.height = value;
                  print(bmiModel.height!.toInt());
                  setState(() {});
                }),

                TextField(
                  controller: ageController,
                  decoration: InputDecoration(
                    hintText: "Enter Age",

                  ),
                ),

                ElevatedButton(onPressed: (){
                  bmiModel.calculateBMI();
                  print(bmiModel.result);
                  print(ageController.text);
                  //Navigator.push(context, MaterialPageRoute(builder: (context) =>  ResultScreen(bmiModel.result!)));
                }, child: const Text("Calculate"))

              ],
            ),
          ),




        ],
      ),
    );
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    ageController.dispose();
  }
}
