
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../common/configs/appColors.dart';
import 'kText.dart';

snackbar(
    String? message, {
      Color? textColor,
      Color? bgColor,
      Widget? child,
    }) {
  ScaffoldMessenger.of(Get.context as BuildContext).showSnackBar(
    SnackBar(
      backgroundColor: bgColor ?? blue,
      duration: const Duration(milliseconds: 800),
      elevation: 50,
      content: child ??
          KText(
            text: message.toString(),
            color: textColor ?? white,
          ),
    ),
  );
}