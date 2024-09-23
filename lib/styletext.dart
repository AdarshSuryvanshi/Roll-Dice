import 'package:flutter/material.dart';

class Styletext extends StatelessWidget { // Here is the define of our  Custome widget ..Which we have call previously.........
  const Styletext({super.key});   //  One very imp thing There's not any rule that our..Custome widget name and file name should be same it can be anything
                                  // According to the user wish ... Custome widget could be anything 
  @override
  Widget build(context) {
    return const Text(
      'hello World',
      style: TextStyle(
        color: Colors.white,
        fontSize: 28,
      ),
    );
  }
}
