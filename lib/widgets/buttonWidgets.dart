import 'package:flutter/material.dart';
import '../common/configs/appColors.dart';
import 'kText.dart';


// LTD button

class ButtonLTD extends StatelessWidget {
  const ButtonLTD(
      {Key? key,
        this.bgColor,
        this.widget,
        this.height,
        this.width,
        this.radius,
        required this.onTap,
        this.focusColor})
      : super(key: key);
  final Color? bgColor;
  final Color? focusColor;
  final Widget? widget;
  final double? height;
  final double? width;
  final double? radius;
  final GestureTapCallback onTap;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
        elevation: 0.0,
        hoverColor: focusColor,
        highlightColor: focusColor,
        color: bgColor ?? blue,
        height: height ?? 35.0,
        minWidth: width ?? 00.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(radius ?? 5.0),
        ),
        onPressed: onTap,
        child: widget ??  KText(text: "title",));
  }
}

//Circle Button
class CircleBtn extends StatelessWidget {
  const CircleBtn(
      {Key? key,
        this.bgColor,
        this.icon,
        this.iconSize,
        this.radius,
        required this.onTap,
        this.iconColor})
      : super(key: key);
  final Color? bgColor;
  final Color? iconColor;
  final IconData? icon;

  final double? iconSize;
  final double? radius;
  final GestureTapCallback onTap;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      splashRadius: radius ?? 30.0,
      color: bgColor ?? blue,
      onPressed: onTap,
      icon: Icon(
        icon ?? Icons.arrow_back,
        color: iconColor ?? Colors.white,
        size: iconSize ?? 24.0,
      ),
    );
  }
}