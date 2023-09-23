import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  const Result({Key? key, required this.result}) : super(key: key);
  final double? result;
  final String status ="NORMAL";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1D2136),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: const EdgeInsets.only(left: 10, bottom: 20),
              child: const Text("Your Result", style: TextStyle(
                color: Colors.white,
                fontSize: 50,
                fontWeight: FontWeight.bold,
              ),),
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 120),
                width: double.infinity,
                margin: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color:const Color(0xFF323244),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(status, style: const TextStyle(
                      color: Color(0xFF79BC99),
                      fontSize: 25,
                      fontWeight: FontWeight.w600
                    ),),
                    Text("${result?.toStringAsFixed(1)}", style: const TextStyle(
                        color: Colors.white,
                        fontSize: 80,
                        fontWeight: FontWeight.bold,
                    ),),
                    Column(
                      children: const [
                        Text("You have a normal body weight.", style: TextStyle(
                          color: Colors.white,
                          fontSize: 23,
                        ),),
                        Text("Good job!", style: TextStyle(
                          color: Colors.white,
                          fontSize: 23,
                        ),)
                      ],
                    ),

                  ],
                ),
              ),
            ),
            Container(
                width: double.infinity,
                height: 55,
                decoration: const BoxDecoration(
                  color: Color(0xFFE83D66),),
                child: MaterialButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: const Text(
                    "RE-CALCULATE",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
