import 'package:flutter/material.dart';

import '../core/size_config.dart';

class GenderWidget extends StatelessWidget {

  String imagePath;
  String gender;


  GenderWidget(this.imagePath, this.gender);

  @override
  Widget build(BuildContext context) {
    return  Container(
      color: Color(0xff1A1F38),
      height: SizeConfig.screenHeight! * 0.25,
      width: SizeConfig.screenWidth! * 0.35,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset(imagePath),
          Text(gender , style: const TextStyle(
            color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold,
          ),)

        ],
      ),
    );

  }

}
