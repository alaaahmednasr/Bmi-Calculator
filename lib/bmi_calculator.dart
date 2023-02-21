import 'dart:math';
import 'package:bmi_calculator/bmi_result.dart';
import 'package:flutter/material.dart';

class BmiCalculator extends StatefulWidget {
  const BmiCalculator({Key? key}) : super(key: key);

  @override
  BmiScreenState createState() => BmiScreenState();
}

class BmiScreenState extends State<BmiCalculator> {
  bool isMale = true;
  double height = 120;

  int weight = 40;
  int age = 20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF090b21),
      body: SafeArea(
        child: Container(
          color: const Color(0xFF090b21),
          width: double.infinity,
          child: Column(
            children: [
              // Making the application name section
              Container(
                width: double.infinity,
                height: 60,
                alignment: Alignment.center,
                color: const Color(0xFF6A759B),
                child: const Text(
                  'BMI CALCULATOR',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),

              // Making gender section
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                    children: [
                      // 1- male
                      Expanded(
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              isMale = true;
                            });
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              color: isMale
                                  ? const Color(0xFFB9D4F1)
                                  : const Color(0xFF1b1d31),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Image(
                                  image: AssetImage(
                                    'assests/images/male.png',
                                  ),
                                  height: 140,
                                  width: 90,
                                ),
                                Text(
                                  'MALE',
                                  style: TextStyle(
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      // 2- female
                      Expanded(
                        child: GestureDetector(
                          onTap: (() {
                            setState(() {
                              isMale = false;
                            });
                          }),
                          child: Container(
                            decoration: BoxDecoration(
                              color: !isMale
                                  ? const Color(0xFFB9D4F1)
                                  : const Color(0xFF1b1d31),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Image(
                                  image: AssetImage(
                                    'assests/images/female.png',
                                  ),
                                  height: 140,
                                  width: 90,
                                ),
                                Text(
                                  'FEMALE',
                                  style: TextStyle(
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              // Making height section
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: const Color(0xFF1b1d31),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        // 1- text
                        const Text(
                          'HEIGHT',
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF5f6276),
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        // 2- height
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.alphabetic,
                          children: [
                            Text(
                              '${height.round()}',
                              style: const TextStyle(
                                fontSize: 50,
                                fontWeight: FontWeight.w900,
                                color: Colors.white,
                              ),
                            ),
                            const Text(
                              'CM',
                              style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF5f6276),
                              ),
                            ),
                          ],
                        ),
                        // 3- slider
                        Slider(
                          value: height,
                          min: 80,
                          max: 220,
                          activeColor: Colors.white,
                          inactiveColor: Color(0xFF525162),
                          onChanged: (value) {
                            setState(() {
                              height = value;
                            });
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ),

              // Making age and weight section
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                    children: [
                      // 1- weight
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            color: const Color(0xFF1b1d31),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              // 1- text
                              const Text(
                                'WEIGHT',
                                style: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF5f6276),
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              // 2- weight
                              Text(
                                '${weight}',
                                style: const TextStyle(
                                  fontSize: 50,
                                  fontWeight: FontWeight.w900,
                                  color: Colors.white,
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              // 3- buttons
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  // 1- add
                                  FloatingActionButton(
                                    onPressed: () {
                                      setState(() {
                                        weight++;
                                      });
                                    },
                                    child: const Icon(
                                      Icons.add,
                                    ),
                                    foregroundColor: const Color(0xFF090b21),
                                    backgroundColor: Colors.white,
                                    mini: true,
                                    heroTag: 'weight add',
                                  ),
                                  const SizedBox(
                                    width: 15,
                                  ),
                                  // 2- remove
                                  FloatingActionButton(
                                    onPressed: () {
                                      setState(() {
                                        weight--;
                                      });
                                    },
                                    child: const Icon(
                                      Icons.remove,
                                    ),
                                    foregroundColor: const Color(0xFF090b21),
                                    backgroundColor: Colors.white,
                                    mini: true,
                                    heroTag: 'weight remove',
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      // 2- age
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            color: const Color(0xFF1b1d31),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              // 1- text
                              const Text(
                                'AGE',
                                style: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF5f6276),
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              // 2- age
                              Text(
                                '${age}',
                                style: const TextStyle(
                                  fontSize: 50,
                                  fontWeight: FontWeight.w900,
                                  color: Colors.white,
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              // 3- buttons
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  // 1- age add
                                  FloatingActionButton(
                                    onPressed: () {
                                      setState(() {
                                        age++;
                                      });
                                    },
                                    child: const Icon(
                                      Icons.add,
                                    ),
                                    foregroundColor: const Color(0xFF090b21),
                                    backgroundColor: Colors.white,
                                    mini: true,
                                    heroTag: 'age add',
                                  ),
                                  const SizedBox(
                                    width: 15,
                                  ),
                                  // 2- age remove
                                  FloatingActionButton(
                                    onPressed: () {
                                      setState(() {
                                        age--;
                                      });
                                    },
                                    child: const Icon(
                                      Icons.remove,
                                    ),
                                    foregroundColor: const Color(0xFF090b21),
                                    backgroundColor: Colors.white,
                                    mini: true,
                                    heroTag: 'age remove',
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              // Making calculate button
              Container(
                width: double.infinity,
                alignment: Alignment.center,
                color: const Color(0xFF6A759B),
                child: MaterialButton(
                  onPressed: () {
                    double result = weight / pow(height / 100, 2);
                    String bmiResult = CalculateBmi(result);
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => BmiCalculatorResult(
                          result: result.round(),
                          bmiResult: bmiResult,
                        ),
                      ),
                    );
                  },
                  child: const Text(
                    'CALCULATE',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

String CalculateBmi(double result) {

  if (result < 18.5) {
    return 'You\'re in the underweight range.';
  } else if (result < 25) {
    return 'You\'re in the healthy weight range.';
  } else if (result < 30) {
    return 'You\'re in the overweight range.';
  } else {
    return 'You\'re in the obese range.';
  }
}
