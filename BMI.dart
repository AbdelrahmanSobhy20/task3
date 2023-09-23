import 'dart:math';

import 'package:flutter/material.dart';
import 'package:test_tasks_intermediate/result.dart';

class BMI extends StatefulWidget {
  const BMI({Key? key}) : super(key: key);

  @override
  State<BMI> createState() => _BMIState();
}

class _BMIState extends State<BMI> {
  bool ismale = true;
  double height = 180;
  int weight = 80;
  int age = 20;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1D2136),
      appBar: AppBar(
        backgroundColor: Color(0xFF1D2136),
        title: const Text(
          "BMI CALCULATOR",
          style: TextStyle(
            color: Colors.white,
            fontSize: 25,
          ),
        ),
        centerTitle: true,
      ),
      body:
      Column(
        children: [
          Container(
            padding: const EdgeInsets.all(15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: (){
                    setState(() {
                      ismale = true;
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: !ismale? const Color(0xFF323244): const Color(0xFF24263B),
                    ),
                    padding: const EdgeInsets.all(15),
                    child: Column(
                      children: const [
                        Icon(
                          Icons.male_rounded,
                          size: 150,
                          color: Colors.white,
                        ),
                        Text(
                          "MALE",
                          style: TextStyle(color: Colors.white, fontSize: 30),
                        )
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: (){
                    setState(() {
                      ismale = false;
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: !ismale? const Color(0xFF24263B):const Color(0xFF323244),
                    ),
                    padding: const EdgeInsets.all(15),
                    child: Column(
                      children: const [
                        Icon(
                          Icons.female_rounded,
                          size: 150,
                          color: Colors.white,
                        ),
                        Text(
                          "FEMALE",
                          style: TextStyle(color: Colors.white, fontSize: 30),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),


          Expanded(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: const Color(0xFF323244),
              ),
              padding: EdgeInsets.all(40),
              margin: EdgeInsets.all(15),
              child: Column(
                children: [
                  const Text(
                    "HEIGHT",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w300,
                      color: Colors.grey,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text("${height.round()}",
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 50,
                            fontWeight: FontWeight.bold,
                          )),
                      const Text("cm",
                          style: TextStyle(color: Colors.white, fontSize: 30))
                    ],
                  ),
                  Expanded(
                    child: Slider(
                        activeColor: Color(0xFFBE4A67),
                        value: height,
                        min: 140,
                        max: 220,
                        onChanged: (value) {
                          setState(() {
                            height = value;
                          });
                        }),
                  )
                ],
              ),
            ),
          ),


          Container(
            padding: const EdgeInsets.all(15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: const Color(0xFF323244),
                  ),
                  padding: const EdgeInsets.fromLTRB(40, 35 , 40, 35),
                  child: Column(
                    children: [
                      const Text(
                        "WEIGHT",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w300,
                          color: Colors.grey,
                        ),
                      ),
                      Text(
                        "$weight",
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 50,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Row(
                        children: [
                          FloatingActionButton(
                            onPressed: () {
                              setState(() {
                                weight--;
                              });
                            },
                            mini: true,
                            backgroundColor: Color(0xFF5D5F6E),
                            child: Icon(Icons.remove),
                          ),
                          FloatingActionButton(
                            onPressed: () {
                              setState(() {
                                weight++;
                              });
                            },
                            mini: true,
                            backgroundColor: Color(0xFF5D5F6E),
                            child: Icon(Icons.add),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: const Color(0xFF323244),
                  ),
                  padding: EdgeInsets.fromLTRB(40, 35 , 40, 35),
                  child: Column(
                    children: [
                      const Text(
                        "AGE",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w300,
                          color: Colors.grey,
                        ),
                      ),
                      Text(
                        "$age",
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 50,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Row(
                        children: [
                          FloatingActionButton(
                            onPressed: () {
                              setState(() {
                                age--;
                              });
                            },
                            mini: true,
                            backgroundColor: Color(0xFF5D5F6E),
                            child: Icon(Icons.remove),
                          ),
                          FloatingActionButton(
                            onPressed: () {
                              setState(() {
                                age++;
                              });
                            },
                            mini: true,
                            backgroundColor: Color(0xFF5D5F6E),
                            child: Icon(Icons.add),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
              width: double.infinity,
              height: 55,
              decoration: const BoxDecoration(
                  color: Color(0xFFE83D66),),
              child: MaterialButton(
                onPressed: () {
                  var result = weight / pow(height / 100, 2);
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => Result(result: result,)));
                },
                child: const Text(
                  "CALCULATE",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 25, fontWeight: FontWeight.bold),
                ),
              ))
        ],
      ),
    );
  }
}
