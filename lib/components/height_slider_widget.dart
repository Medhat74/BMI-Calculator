import 'package:flutter/material.dart';

class HeightSliderWidget extends StatelessWidget {

  double height;
  var fun;

  HeightSliderWidget(this.height, this.fun);

  @override
  Widget build(BuildContext context) {
    return Slider(
      min: 100.0,
      max: 200.0,
      //divisions: 100,
      value: height,
      activeColor: const Color(0xff6200EE), // The color to use for the portion of the slider track that is active.
      inactiveColor: const Color(0xff979797), // The color for the inactive portion of the slider track.
      thumbColor:  const Color(0xffF10606),
      label: height.round().toString(),
      onChanged: fun,
    );
  }
}
