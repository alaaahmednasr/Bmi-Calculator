import 'package:flutter/material.dart';

class BmiCalculatorResult extends StatelessWidget {
  late final bool gender;
  late double height;
  late int weight;
  late int age;
  late int result;
  late String bmiResult;

  BmiCalculatorResult({
    required this.gender,
    required this.height,
    required this.weight,
    required this.age,
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
                            color: const Color(0xFF2db270),
                          ),
                        ),
                      ),

                      const SizedBox(
                        height: 20,
                      ),
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

                      Container(
                        child: Column(
                          children: const [
                            Text(
                              'Normal BMI Range:',
                              style: TextStyle(
                                fontSize: 23,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF5f6276),
                              ),
                            ),
                            Text(
                              '18.5 - 25 Kg/m2',
                              style: TextStyle(
                                fontSize: 23,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),

                      const SizedBox(
                        height: 25,
                      ),
                      Container(
                        child: Text(
                          '${bmiResult}',
                          style: const TextStyle(
                            fontSize: 23,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      // // 2- gender
                      // Padding(
                      //   padding: const EdgeInsets.all(20.0),
                      //   child: Container(
                      //     decoration: const BoxDecoration(
                      //       color: Colors.white,
                      //       borderRadius: BorderRadius.all(
                      //         Radius.circular(10),
                      //       ),
                      //     ),
                      //     child: Row(
                      //       mainAxisAlignment: MainAxisAlignment.center,
                      //       children: [
                      //         const Text(
                      //           'Gender :',
                      //           style: TextStyle(
                      //             fontSize: 25,
                      //             fontWeight: FontWeight.bold,
                      //             color: Color(0xFF5f6276),
                      //           ),
                      //         ),
                      //         const SizedBox(
                      //           width: 20,
                      //         ),
                      //         Text(
                      //           '${gender ? 'Male' : 'Female'}',
                      //           style: const TextStyle(
                      //             fontSize: 25,
                      //             fontWeight: FontWeight.bold,
                      //             color: Color(0xFF5f6276),
                      //           ),
                      //         ),
                      //       ],
                      //     ),
                      //   ),
                      // ),

                      // // 3- height
                      // Padding(
                      //   padding: const EdgeInsets.all(20.0),
                      //   child: Container(
                      //     decoration: const BoxDecoration(
                      //       color: Colors.white,
                      //       borderRadius: BorderRadius.all(
                      //         Radius.circular(10),
                      //       ),
                      //     ),
                      //     child: Row(
                      //       mainAxisAlignment: MainAxisAlignment.center,
                      //       children: [
                      //         const Text(
                      //           'Height :',
                      //           style: TextStyle(
                      //             fontSize: 25,
                      //             fontWeight: FontWeight.bold,
                      //             color: Color(0xFF5f6276),
                      //           ),
                      //         ),
                      //         const SizedBox(
                      //           width: 20,
                      //         ),
                      //         Text(
                      //           '${height.round()}',
                      //           style: const TextStyle(
                      //             fontSize: 25,
                      //             fontWeight: FontWeight.bold,
                      //             color: Color(0xFF5f6276),
                      //           ),
                      //         ),
                      //       ],
                      //     ),
                      //   ),
                      // ),

                      // // 4- weight
                      // Padding(
                      //   padding: const EdgeInsets.all(20.0),
                      //   child: Container(
                      //     decoration: const BoxDecoration(
                      //       color: Colors.white,
                      //       borderRadius: BorderRadius.all(
                      //         Radius.circular(10),
                      //       ),
                      //     ),
                      //     child: Row(
                      //       mainAxisAlignment: MainAxisAlignment.center,
                      //       children: [
                      //         const Text(
                      //           'Weight :',
                      //           style: TextStyle(
                      //             fontSize: 25,
                      //             fontWeight: FontWeight.bold,
                      //             color: Color(0xFF5f6276),
                      //           ),
                      //         ),
                      //         const SizedBox(
                      //           width: 20,
                      //         ),
                      //         Text(
                      //           '${weight}',
                      //           style: const TextStyle(
                      //             fontSize: 25,
                      //             fontWeight: FontWeight.bold,
                      //             color: Color(0xFF5f6276),
                      //           ),
                      //         ),
                      //       ],
                      //     ),
                      //   ),
                      // ),

                      // // 5- age
                      // Padding(
                      //   padding: const EdgeInsets.all(20.0),
                      //   child: Container(
                      //     decoration: const BoxDecoration(
                      //       color: Colors.white,
                      //       borderRadius: BorderRadius.all(
                      //         Radius.circular(10),
                      //       ),
                      //     ),
                      //     child: Row(
                      //       mainAxisAlignment: MainAxisAlignment.center,
                      //       children: [
                      //         const Text(
                      //           'Age :',
                      //           style: TextStyle(
                      //             fontSize: 25,
                      //             fontWeight: FontWeight.bold,
                      //             color: Color(0xFF5f6276),
                      //           ),
                      //         ),
                      //         const SizedBox(
                      //           width: 40,
                      //         ),
                      //         Text(
                      //           '${age}',
                      //           style: const TextStyle(
                      //             fontSize: 25,
                      //             fontWeight: FontWeight.bold,
                      //             color: Color(0xFF5f6276),
                      //           ),
                      //         ),
                      //       ],
                      //     ),
                      //   ),
                      // ),

                      // // 6- result
                      // Padding(
                      //   padding: const EdgeInsets.all(20.0),
                      //   child: Container(
                      //     decoration: const BoxDecoration(
                      //       color: Colors.white,
                      //       borderRadius: BorderRadius.all(
                      //         Radius.circular(10),
                      //       ),
                      //     ),
                      //     child: Row(
                      //       mainAxisAlignment: MainAxisAlignment.center,
                      //       children: [
                      //         const Text(
                      //           'Result :',
                      //           style: TextStyle(
                      //             fontSize: 25,
                      //             fontWeight: FontWeight.bold,
                      //             color: Color(0xFF5f6276),
                      //           ),
                      //         ),
                      //         const SizedBox(
                      //           width: 20,
                      //         ),
                      //         Text(
                      //           '${result}',
                      //           style: const TextStyle(
                      //             fontSize: 25,
                      //             fontWeight: FontWeight.bold,
                      //             color: Color(0xFF5f6276),
                      //           ),
                      //         ),
                      //       ],
                      //     ),
                      //   ),
                      // ),

                      // // 7- bmi result text
                      // Container(
                      //   child: Column(
                      //     children: const [
                      //       Text(
                      //         'Normal BMI Range:',
                      //         style: TextStyle(
                      //           fontSize: 23,
                      //           fontWeight: FontWeight.bold,
                      //           color: Color(0xFF5f6276),
                      //         ),
                      //       ),
                      //       Text(
                      //         '18.5 - 25 Kg/m2',
                      //         style: TextStyle(
                      //           fontSize: 23,
                      //           fontWeight: FontWeight.bold,
                      //           color: Colors.white,
                      //         ),
                      //       ),
                      //     ],
                      //   ),
                      // ),

                      // const SizedBox(
                      //   height: 25,
                      // ),
                      // Container(
                      //   child: Text(
                      //     '${bmiResult}',
                      //     style: const TextStyle(
                      //       fontSize: 23,
                      //       fontWeight: FontWeight.bold,
                      //       color: Colors.white,
                      //     ),
                      //     textAlign: TextAlign.center,
                      //   ),
                      // ),
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
