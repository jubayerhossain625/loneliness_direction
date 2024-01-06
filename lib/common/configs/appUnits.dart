
import 'package:flutter/material.dart';


final formKey = GlobalKey<FormState>();
final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
final accessToken = 'accessToken';

final paddingZero = EdgeInsets.zero;
final paddingAll5 = EdgeInsets.all(5);
final paddingAll10 = EdgeInsets.all(10);
final paddingAll20 = EdgeInsets.all(20);

final paddingH10V5 = EdgeInsets.symmetric(horizontal: 10, vertical: 5);
final paddingH5 = EdgeInsets.symmetric(horizontal: 5);
final paddingH10 = EdgeInsets.symmetric(horizontal: 10);
final paddingH15 = EdgeInsets.symmetric(horizontal: 15);
final paddingH20 = EdgeInsets.symmetric(horizontal: 20);
final paddingH20V10 = EdgeInsets.symmetric(horizontal: 20, vertical: 5);
final paddingH10V20 = EdgeInsets.symmetric(horizontal: 10, vertical: 20);
final paddingH30V10 = EdgeInsets.symmetric(horizontal: 30, vertical: 5);

final paddingV5 = EdgeInsets.symmetric(vertical: 5);
final paddingV10 = EdgeInsets.symmetric(vertical: 10);
final paddingV20 = EdgeInsets.symmetric(vertical: 20);

//sized box --> Height
final sizeH5 = SizedBox(height: 5);
final sizeH10 = SizedBox(height: 10);
final sizeH15 = SizedBox(height: 15);
final sizeH20 = SizedBox(height: 20);
final sizeH25 = SizedBox(height: 25);
final sizeH40 = SizedBox(height: 40);
final sizeH30 = SizedBox(height: 30);

//sized box --> Width
final sizeW5 = SizedBox(width: 5);
final sizeW10 = SizedBox(width: 10);
final sizeW15 = SizedBox(width: 15);
final sizeW20 = SizedBox(width: 20);
final sizeW25 = SizedBox(width: 25);

final gradient = LinearGradient(
  begin: Alignment.topRight,
  end: Alignment.bottomLeft,
  colors: [
    Colors.amber,
    Colors.red,
  ],
);
final loginPageGradient = LinearGradient(
  begin: Alignment.topRight,
  end: Alignment.bottomLeft,
  colors: [
    Colors.amber,
    Colors.red,
  ],
);
