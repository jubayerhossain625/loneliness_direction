import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loneliness_direction/widgets/buttonWidgets.dart';
import 'package:loneliness_direction/widgets/kText.dart';
import '../../common/configs/appColors.dart';

loadingDialog({String? cc,String? r, bool barrierDismissible = false}) {
  var context = Get.context as BuildContext;
  showGeneralDialog(
      barrierDismissible: barrierDismissible,
      context: context,
      pageBuilder: (BuildContext buildContext,
          Animation animation,
          Animation secondaryAnimation) {
        return  Material(
          child: Container(
            alignment: Alignment.center,
            height: Get.height,width: Get.width,
            color: Colors.black26,
            child: Container(
              padding: const EdgeInsets.all(8.0),
              width: 300.0,
              height:300.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12.0),
                color: white.withOpacity(0.9),
              ),
             child: Column(
               children: [
                 KText(text: "Loneliness Disorder Results",fontSize: 18,),
                 const Divider(thickness: 1,),
                 const Spacer(),
                 KText(text: "Chances of Disorder",fontSize: 16,fontWeight: FontWeight.w400,),
                 KText(text:   cc,fontSize: 22,),
                 const SizedBox(height: 20,),
                 KText(text: "Loneliness Disorder Occurred",fontSize: 16,fontWeight: FontWeight.w400,),
                 KText(text:  r,fontSize: 22,),
                 const Spacer(),
                 Row(
                   children: [
                     const Spacer(),
                     ButtonLTD(onTap:(){
                       Navigator.pop(context);
                     },
                     bgColor: red,
                       widget: KText(text: "Close",color: white,),
                     )
                   ],
                 )
               ],
             ),
              // child: Image.network( '',
              //   height: 135,
              // ),
            ),
          ),
        );
      });
}