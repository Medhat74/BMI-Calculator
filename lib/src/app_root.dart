import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:session_one/bloc/counter_cubit/counter_cubit.dart';
import 'package:session_one/bloc/home_cubit/home_cubit.dart';

import '../screens/counter_screen.dart';
import '../screens/home_screen.dart';

class AppRoot extends StatelessWidget {
  const AppRoot({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (BuildContext context) => CounterCubit()),
        BlocProvider(create: (BuildContext context) => HomeCubit()),
      ],
      child: MaterialApp(
        home: HomeScreen(),
      ),
    );
  }
}
