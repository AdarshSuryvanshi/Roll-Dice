// Basically Moto to make a another file for this particular class is .. Here data i.e dice is changing internally when we are calling it. This changing data unternally not allowed in statelesswidget..
// To overcome this problem we need to use statefulWidget..But .. in prevoius file .. My code is written in StatelessWidget.. So if i am using StatefullWidget..Whole code need to change.To solve this.We decided ..Only where we need this widget
// We will make a another file for that particular Changing data internally code part ..Separately write this widget By calling this class or Fuction in previous file .Here use Statefulwidget without any hesitaion
import 'package:flutter/material.dart';
import 'dart:math';

final randomizer =
    Random(); // To optimize the Application . Not getting any number repetedly final keyword for finalize the number once done.

class DiceRoller extends StatefulWidget {
  DiceRoller({super.key});
  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  // Here we are  going to make one varaible by help of that we can able to switch our dice from one dice to another.... By clicking the button
  var activeDiceimages = 2; // Currently my Activediceimages is at dice-2
  void rolldice() {
    setState(() {
      // This will update the Image on the user interface and Tell to flutter to re-excute the function
      activeDiceimages = randomizer.nextInt(6) + 1;
      // Here we have Creadted a widget from dart:math file i.e Randome(). To genrate any randome numbers and .nextInt() is the method inside that widget .to genrate a randome integer
    });
    // When i am Click on Textbutton ...This rolldice function is gets called and My ..Dice will change to  dice-4
  }

  @override
  Widget build(context) {
    return Column(
      // Here we have use column widget to Used multiple widget inside the One widget By taking help of " children[]:"
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset('assets/dice-$activeDiceimages.png', width: 200),
        // Here we have to create a button for Rolla dice
        SizedBox(
            height:
                20), // An Alternative for padding to create a space between Widget content and widget border
        TextButton(
          onPressed: rolldice,
          style: TextButton.styleFrom(
            //padding: EdgeInsets.only(top: 20), // Padding is used here to add some space between widget content and widget boundary
            foregroundColor: Colors.white,
            textStyle: TextStyle(
              fontSize: 30,
            ),
          ),
          child: Text('Roll Dice'),
        ), // Textbutton has two arguments one is Child : For printing a text you want inside that button another is .. onPressed: Is a arguments which use " Function as a value"...
      ],
    );
  }
}
