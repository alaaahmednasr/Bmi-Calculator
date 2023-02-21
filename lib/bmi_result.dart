import 'package:flutter/material.dart';

class BmiCalculatorResult extends StatelessWidget {
  late int result;
  late String bmiResult;

  BmiCalculatorResult({
    required this.result,
    required this.bmiResult,
  });

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
              // Making the application name section and back icon
              Container(
                width: double.infinity,
                height: 60,
                alignment: Alignment.center,
                color: const Color(0xFF6A759B),
                child: Row(
                  children: [
                    // 1- back icon
                    IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(
                        Icons.arrow_back,
                        size: 30,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(
                      width: 44.3,
                    ),
                    // 2- name
                    const Text(
                      'BMI CALCULATOR',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),

              // Making result section
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 30,
                  vertical: 35,
                ),
                child: Container(
                  color: const Color(0xFF1b1d31),
                  width: double.infinity,
                  height: 600,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // 1- text
                      Container(
                        child: const Text(
                          'YOUR RESULT',
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: const Color(0xFFFFC4C4),
                          ),
                        ),
                      ),

                      const SizedBox(
                        height: 20,
                      ),
                      // 2- result
                      Container(
                        child: Text(
                          '${result}',
                          style: const TextStyle(
                            fontSize: 70,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),

                      const SizedBox(
                        height: 20,
                      ),

                      // 3- bmi result text
                      Container(
                        child: Column(
                          children: const [
                            Text(
                              'Normal BMI Range:',
                              style: TextStyle(
                                fontSize: 23,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF757886),
                              ),
                            ),
                            Text(
                              '18.5 - 25 Kg/m2',
                              style: TextStyle(
                                fontSize: 23,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFFe4e1e8),
                              ),
                            ),
                          ],
                        ),
                      ),

                      const SizedBox(
                        height: 40,
                      ),

                      // 4- text
                      Container(
                        child: Text(
                          '${bmiResult}',
                          style: const TextStyle(
                            fontSize: 23,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFFe4e1e8),
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),

                      const SizedBox(
                        height: 40,
                      ),

                      MaterialButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Container(
                          color: Color(0xFF191a2e),
                          alignment: Alignment.center,
                          width: 200,
                          height: 70,
                          child: const Text(
                            'RE-CALCULATE',
                            style: TextStyle(
                              fontSize: 23,
                              color: const Color(0xFFFFC4C4),
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ],
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
