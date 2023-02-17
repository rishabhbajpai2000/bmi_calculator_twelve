import 'package:flutter/material.dart';
import 'constants.dart';

class Result extends StatelessWidget {
  const Result({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF0A0E21),
        title: Text("Results Page"),
      ),
      body: Column(
        children: [
          Expanded(
              flex: 1,
              child: Container(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Text(
                    "Your Result",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.left,
                  ),
                ),
              )),
          Expanded(
              flex: 5,
              child: Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
                child: Container(
                  color: activeCardColour,
                  child: Column(
                    children: [
                      Expanded(
                          flex: 1,
                          child: Center(
                              child: Text(
                            kRange,
                            style: TextStyle(
                                fontSize: kNormalTextFontSize,
                                color: Colors.green),
                          ))),
                      Expanded(
                          flex: 2,
                          child: Center(
                            child: Text(
                              BMI,
                              style: TextStyle(
                                  fontSize: 70, fontWeight: FontWeight.w900),
                            ),
                          )),
                      Expanded(
                          flex: 1,
                          child: Column(
                            children: [
                              Text(
                                "Normal BMI Range: ",
                                style: kLabelTextStyle,
                              ),
                              Text("18.5 - 25",
                                  style:
                                      TextStyle(fontSize: kNormalTextFontSize))
                            ],
                          )),
                      Expanded(
                          flex: 2,
                          child: Center(
                            child: Padding(
                              padding: const EdgeInsets.all(25.0),
                              child: Text(
                                kRemark,
                                style: TextStyle(fontSize: kNormalTextFontSize),
                              ),
                            ),
                          )),
                      Expanded(
                          flex: 2,
                          child: Padding(
                            padding: const EdgeInsets.only(
                                left: 30, right: 30, bottom: 30),
                            child: Container(
                              color: inactiveCardColour,
                              child: Center(
                                  child: Text(
                                "Save Result",
                                style: kLabelTextStyle,
                              )),
                            ),
                          )),
                    ],
                  ),
                ),
              )),
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              color: bottomContainerColour,
              margin: const EdgeInsets.only(top: 10),
              width: double.infinity,
              height: bottomContainerHeight,
              child: Center(
                  child: Text(
                "RECALCULATE",
                style: TextStyle(fontSize: 25),
              )),
            ),
          )
        ],
      ),
    );
  }
}
