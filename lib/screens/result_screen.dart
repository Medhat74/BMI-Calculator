import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:session_one/bloc/home_cubit/home_cubit.dart';
import 'package:session_one/bloc/home_cubit/home_cubit.dart';

class ResultScreen extends StatelessWidget {
  double result;

  ResultScreen(this.result);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Your Result:"),
      ),
      body: Column(
        children: [
          Text("Result is : "),
          BlocConsumer<HomeCubit, HomeState>(
            listener: (context, state) {
              // TODO: implement listener
            },
            builder: (context, state) {
              return Text(HomeCubit.bmiModel.result.toString());
                /*state is CalculateBMIState && HomeCubit().bmiModel.result != null ?
                Text(HomeCubit().bmiModel.result.toString()) : const CircularProgressIndicator()*/
              ;
            },
          ),
        ],
      ),
    );
  }

}
