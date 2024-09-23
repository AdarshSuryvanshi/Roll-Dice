import 'package:first_app/dice_roller.dart';
import 'package:flutter/material.dart';

// This package we used when we call styletext widgt in this gradient_container widgt

var startAlignment = Alignment
    .topLeft; // var is the keyword..startAlignment is the varaible name ( Varaible name should be anything)
var endAlignment = Alignment.bottomLeft; // After eqaual to is the value.

// THIS IS THE FIRST CUSTOME WIDGET CREATED BY US..FOR SMOOTH RUNNUNG OF APPLICATION NOT STORING EVERY THING IN MAIN
// ignore: must_be_immutable
class Gradientcontainer extends StatelessWidget {
  Gradientcontainer(this.color1, this.color2,
      {super.key}); // Here i have use Pass values and colors by calling from another widget

  final Color color1;
  final Color color2;

// View > Appreance > Panel Position :- Debug Console
// Print(); - Is the in-bulit function in dart to print soething in Debug console
  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            color1,
            color2 //     [Colors.deepPurple] This also make an acces to predefined  basiccolors
          ],
          begin:
              startAlignment, // here we used varaible Actual containt we stored in another varaible no we just named here
          end: endAlignment,
        ),
      ),
      child: Center(
        child: DiceRoller(), // Here we have Call our StateFulwidget .... Which we have define in another file 
      ),
    );
  } // styletext.dart (); // Here we have call our custome widget Which we have define in anther file
}
