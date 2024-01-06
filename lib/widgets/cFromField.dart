
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../common/configs/appColors.dart';
import 'iconButton.dart';
import 'kText.dart';


Widget cFormField({
  double? height,
  double? width,
  double? bgWidth,
  double? hintSize,
  Color? borderColor,
  String? hint,
  FontWeight? hintWeight,
  double? fontSize,
  TextAlign textAlign = TextAlign.start,
  TextEditingController? controller,
  bool readOnly = false,
  bool isRequiredField = false,
  String? validatorText,
  TextInputType? inputType,
  double? borderRadius,
  Color? errorTextColor,
  Color? titleColor,
  bool obscureText = false,
  Color? hintTextColor,
  Widget? prefixIcon,
  Widget? suffixIcon,
  BorderSide? borderSide,
  void Function(String)? onChanged,
  bool isFilled = true,
  Color? filledColor,
  FontWeight ? tFontWeight,
  String? titleText,
  String? subtitle,
  double? titleTextSize,
  double? topPadding,
  double?leftPadding,
  int? minLines,
  int? maxLength,
  int? maxLines = 1,
  Key? key,
  void Function()? onTap,
  bool isCloseButtonShow = false,
  String? Function(String?)? validator,
  double contentPaddingV = 5.0,
}) {
  return Padding(
    padding:  EdgeInsets.only(top: topPadding ?? 14.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        titleText == null
            ? const SizedBox(width: 10,)
            : Row(
              children: [
                KText(
          text: titleText,
          fontWeight: tFontWeight ?? FontWeight.w600  ,color: titleColor ?? black.withOpacity(0.7),
          fontSize: titleTextSize ?? 15,
        ),
                const SizedBox(width: 3,),
                KText(
                  text: subtitle,
                  fontWeight: tFontWeight ?? FontWeight.w700  ,color: titleColor ?? black.withOpacity(0.7),
                  fontSize: 12,
                ),
              ],
            ),
        titleText == null ? const SizedBox(width: 10,) : const SizedBox(height: 10,),
        Container(
          padding: EdgeInsets.only(left: leftPadding ?? 0),color: Colors.transparent,
          height: height ?? null,
          width: width ?? null,
          child: TextFormField(
            onTap: onTap,
            minLines: minLines,key: key,
            maxLength: maxLength,
            maxLines: maxLines,
            onChanged: onChanged,
            controller: controller ?? TextEditingController(),
            keyboardType: inputType,
            textAlign: textAlign,
            readOnly: readOnly,
            obscureText: obscureText ,
            obscuringCharacter: '*',
            style: TextStyle(
              fontSize: fontSize ?? 16,
              fontWeight: FontWeight.w600,
            ),
            validator: validator,
            decoration: InputDecoration(
              counterText: '',
              errorStyle: TextStyle(color: errorTextColor ?? Colors.red,),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(borderRadius ?? 8),
                borderSide: BorderSide(
                    width: bgWidth ?? 1,color: borderColor ?? Colors.white
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(borderRadius ?? 8),
                borderSide: BorderSide(
                    width: bgWidth ?? 1,color: borderColor ?? Colors.white
                ),
              ),
              errorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(borderRadius ?? 8),
                borderSide: BorderSide(
                    width: bgWidth ?? 1,color: borderColor ?? Colors.white
                ),
              ),
              focusedErrorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(borderRadius ?? 8),
                borderSide: BorderSide(
                    width: bgWidth ?? 1,color: borderColor ?? Colors.transparent
                ),
              ),
              prefixIcon: prefixIcon,
              suffixIcon: suffixIcon ??
                  (isCloseButtonShow == true
                      ? iconButton(
                    onTap: () => controller!.clear(),
                    icons: Icons.close,iconColor: Colors.red,
                    iconSize: 16,
                  )
                      : const SizedBox()),
              contentPadding: EdgeInsets.symmetric(horizontal: 10,vertical:contentPaddingV),
              hintText: '$hint',
              hintStyle: TextStyle(
                  color: hintTextColor ?? Colors.black.withOpacity(0.59),fontSize: hintSize ?? 14.0 ,fontWeight: hintWeight ?? FontWeight.w400,letterSpacing: 0.5
              ),
              fillColor: filledColor ??  white,
              filled: isFilled,
            ),
          ),
        ),
      ],
    ),
  );
}

// String? customValidator(String? value) {
//   // Add your custom validation logic here
//   if (value == null || value.isEmpty) {
//     return 'This field is required'; // Error message for empty field
//   }
//
//   // Add more validation rules as needed...
//
//   return null; // Return null if the value is valid
// }