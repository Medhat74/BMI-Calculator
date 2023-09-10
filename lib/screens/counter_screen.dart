import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:session_one/bloc/counter_cubit/counter_cubit.dart';

class CounterScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocConsumer<CounterCubit, CounterState>(
        listener: (context, state) {
          // TODO: implement listener
          if(state is CounterAddState) {
            print("Add State");
          }
        },
        builder: (context, state) {
          var cubit = CounterCubit.get(context);
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Counter", style: TextStyle(fontSize: 20),),
                ),
                Text("${cubit.counter}", style: TextStyle(fontSize: 20),),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: () {
                          cubit.addOne();
                        },
                        child: Container(
                          color: Colors.green,
                          child: Row(
                            children: [
                              Icon(Icons.add),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text("add"),
                              ),
                            ],
                          ),
                        ),

                      ),
                      SizedBox(width: 10,),
                      GestureDetector(
                        onTap: () {
                          cubit.minusOne();
                        },
                        child: Container(
                          color: Colors.orange,
                          child: Row(
                            children: [
                              Icon(Icons.exposure_minus_1),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text("minus"),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GestureDetector(
                    onTap: () {
                      cubit.reset();
                    },
                    child: Container(
                      color: Colors.red,
                      width: 80,
                      child: Row(
                        children: [
                          Icon(Icons.lock_reset),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("Reset"),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),

              ],
            ),
          );
        },
      ),
    );
  }
}
