import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:session_one/bloc/counter_cubit/counter_cubit.dart';
import 'package:session_one/bloc/home_cubit/home_cubit.dart';
import 'package:session_one/bloc/home_cubit/home_cubit.dart';
import 'package:session_one/components/gender_widget.dart';
import 'package:session_one/components/height_slider_widget.dart';
import 'package:session_one/core/size_config.dart';
import 'package:session_one/screens/result_screen.dart';

import '../components/teext_white.dart';

class HomeScreen extends StatelessWidget {

  double? height;

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: Color(0xff0A0E21),
      appBar: AppBar(
        backgroundColor: const Color(0xff1A1F38),
        title: const Center(
          child: Text(
            "BMI Calculator",
            style: TextStyle(
              color: Colors.white,
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      body: BlocConsumer<HomeCubit, HomeState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          var cubit = HomeCubit.get(context);
          return Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GenderWidget("assets/female_vector.png", "Female"),
                  GenderWidget("assets/male_vector.png", "male"),
                ],
              ),
              Container(
                color: Color(0xff1A1F38),
                width: SizeConfig.screenWidth! * 0.8,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    //crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Center(
                        child: Row(
                          children: [
                            TextWhite(text: 'HEIGHT', size: 30, isBold: true),
                            TextWhite(text: 'Cm', size: 10, isBold: false),
                          ],
                        ),
                      ),
                      Slider(
                        min: 0,
                        max: 200,
                        divisions:200 ,
                        activeColor: Color(0xff6200EE),
                        inactiveColor: Color(0xff979797),
                        thumbColor: Color(0xffF10606),
                        label: HomeCubit.bmiModel.height.round().toString(),
                        value: HomeCubit.bmiModel.height,
                        onChanged: cubit.changeHeight,
                      ),
                    ]),
              ),

              ElevatedButton(onPressed: (){
                cubit.calculateBMI();
                print(HomeCubit.bmiModel.result.toString());
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => ResultScreen(HomeCubit.bmiModel.result!)));
              }, child: TextWhite(text: 'Calculate',size: 20,isBold: false,)),
            ],
          );
        },
      ),
    );
  }
}
