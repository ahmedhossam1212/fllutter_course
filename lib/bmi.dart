import 'dart:math';

import 'package:flutter/material.dart';

class BmiScreen extends StatefulWidget {
  const BmiScreen({Key? key}) : super(key: key);

  @override
  State<BmiScreen> createState() => _BmiScreenState();
}

class _BmiScreenState extends State<BmiScreen> {
  bool isRed = true;
  var height = 0.0;
  var age = 0;
  var weight = 0;
  double result = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text(
          "BMI",
          style: TextStyle(color: Colors.red),
        ),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () {
                      setState(() {
                        isRed = true;
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          color: isRed ? Colors.red : Colors.black,
                          borderRadius: BorderRadius.circular(20)),
                      height: 120,
                      width: 120,
                      child: const Center(
                        child: Text(
                          "Male",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        isRed = false;
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          color: isRed ? Colors.black : Colors.red,
                          borderRadius: BorderRadius.circular(20)),
                      height: 120,
                      width: 120,
                      child: const Center(
                        child: Text(
                          "Female",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 100,
              ),
              Column(
                children: [
                  const Text(
                    "Height",
                    style: TextStyle(fontSize: 20, color: Colors.red),
                  ),
                  Text(
                    "${height.round()} CM",
                    style: const TextStyle(color: Colors.red),
                  ),
                  Slider(
                      value: height,
                      max: 200, // cm
                      inactiveColor: Colors.grey[900],
                      activeColor: Colors.red,
                      onChanged: (double value) {
                        setState(
                          () {
                            height = value;
                          },
                        );
                      }),
                  const SizedBox(
                    height: 100,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(20)),
                        height: 120,
                        width: 150,
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                            children: [
                              const Text(
                                "Weight",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "$weight KG",
                                style: const TextStyle(
                                    fontSize: 15, color: Colors.black),
                              ),
                              Row(
                                children: [
                                  TextButton(
                                      onPressed: () {
                                        setState(() {
                                          weight++;
                                        });
                                      },
                                      child: const Text(
                                        "+",
                                        style: TextStyle(
                                          fontSize: 20,
                                          color: Colors.black,
                                        ),
                                      )),
                                  TextButton(
                                      onPressed: () {
                                        setState(() {
                                          weight--;
                                        });
                                      },
                                      child: const Text(
                                        "-",
                                        style: TextStyle(
                                          fontSize: 20,
                                          color: Colors.black,
                                        ),
                                      ))
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(20)),
                        height: 120,
                        width: 150,
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                            children: [
                              const Text(
                                "Age",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "$age",
                                style: const TextStyle(
                                    fontSize: 15, color: Colors.black),
                              ),
                              Row(
                                children: [
                                  TextButton(
                                      onPressed: () {
                                        setState(() {
                                          age++;
                                        });
                                      },
                                      child: const Text(
                                        "+",
                                        style: TextStyle(
                                          fontSize: 20,
                                          color: Colors.black,
                                        ),
                                      )),
                                  TextButton(
                                      onPressed: () {
                                        setState(() {
                                          age--;
                                        });
                                      },
                                      child: const Text(
                                        "-",
                                        style: TextStyle(
                                          fontSize: 20,
                                          color: Colors.black,
                                        ),
                                      )),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        result = weight / pow(height/100, 2);
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(20)),
                      height: 50,
                      width: 300,
                      child: const Center(
                        child: Text(
                          "Calculate",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Result:${result.roundToDouble()}",
                    style: const TextStyle(color: Colors.red),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
