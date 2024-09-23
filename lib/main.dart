// ignore: file_names
// ignore: file_names
import 'package:flutter/material.dart';

import 'package:first_app/gradient_container.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Color.fromARGB(255, 191, 23,
          217), // [backgroundColor:colors.deepPurple ] if you could do like this .This may give acceses to varoius
      // predefined colcors...for eg ..we take Purple...You can take any color
      body: Gradientcontainer(
        // Pass the values of colors from here to next widget
        Color.fromARGB(255, 19, 6, 202),
        Color.fromARGB(255, 13, 134,
            226), // Here I have pass the Required colors and use them in another widget
      ),
    ),
  ));
}