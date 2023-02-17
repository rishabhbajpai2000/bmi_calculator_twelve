import 'dart:ffi';

import 'constants.dart';

void calculation() {
  double heightInM = height / 100;

  double BMIDouble = weight / heightInM/heightInM;
  BMI = BMIDouble.toStringAsPrecision(4);

    List<String> ranges = ["UNDERWEIGHT", "HEALTHY", "OVERWEIGHT", "OBESE"];
  List<String> remarks = [
    "Mummy ne boost nahin pilaya?",
    "Aree aap to raja beta ho, sab sahi hai.",
    "Shabaash aap mote ho gae hain, chaliye exercise karne lag jaaie!",
    "Arree aap to dharti par bojh hain, jaiye daudh kar aaie!!"
  ];

  if(BMIDouble < 18.5){
    kRemark = remarks[0];
    kRange = ranges[0];
  }
  else if (BMIDouble > 18.5 && BMIDouble < 24.9){
    kRemark = remarks[1];
    kRange = ranges[1];
  }else if (BMIDouble > 25 && BMIDouble < 29.9){
    kRemark = remarks[2];
    kRange = ranges[2];
  }else if (BMIDouble > 29.9){
    kRemark = remarks[3];
    kRange = ranges[3];
  }
}
