import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  double bmiResult;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Your Result:"),
      ),
      body: Column(
        children: [
          Text("Result is : "),
          Text(bmiResult.toString()),
        ],
      ),
    );
  }

  ResultScreen(this.bmiResult, {super.key});
}
