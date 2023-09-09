import 'package:flutter/material.dart';

class GenderWidget extends StatelessWidget {

  String imagePath;
  String gender;


  @override
  Widget build(BuildContext context) {
    return  Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: const Color(0xff1A1F38) ,
      ),
      height: 130,
      width: 90,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset(imagePath),
          Text(gender ,style: const TextStyle(
            color: Colors.white, fontSize: 20,),
          ),
        ],
      ),
    );

  }

  GenderWidget(this.imagePath, this.gender, {super.key});
}
