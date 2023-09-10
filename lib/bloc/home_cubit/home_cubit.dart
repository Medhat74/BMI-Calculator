import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:session_one/models/BMIModel.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitial());
  static HomeCubit get(context) => BlocProvider.of(context);

  static BMIModel bmiModel = BMIModel(150, 70, 20);

  void changeHeight(value){
    bmiModel.height = value;
    print(bmiModel.height);
    emit(ChangeHeightState());
  }

  void calculateBMI(){
    bmiModel.calculateBMI();
    print(bmiModel.result);
    emit(CalculateBMIState());
  }


}
