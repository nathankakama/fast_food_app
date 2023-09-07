import 'package:flutter/material.dart';

Widget TitleText (String string) {
  return Text(
    string,
    style: new TextStyle(
        color: Colors.black,
        fontSize: 20,
        fontFamily: 'Montserrat',
        fontWeight: FontWeight.bold
    ),
  );
}

Widget DetailText (String string){
  return Text(
    string,
    style: new TextStyle(
      color: Color(0xFF575E67),
      fontSize: 18,
      fontFamily: 'Montserrat',
    ),
  );
}
Widget PriceText (String string){
  return Text(
    string,
    style: new TextStyle(
        color: Colors.black87,
        fontSize: 20,
        fontWeight: FontWeight.bold,
        fontFamily: 'Montserrat',
    ),
  );
}