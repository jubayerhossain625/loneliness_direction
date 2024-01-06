
import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:loneliness_direction/common/configs/appColors.dart';
import 'package:loneliness_direction/widgets/snackbar.dart';
import 'package:http/http.dart' as http;
import 'package:get/get.dart';

import '../widgets/loadingDialog.dart';

class HomeController extends GetxController{

  final q1 = TextEditingController(text: '').obs;
  final q2 = TextEditingController(text: '').obs;
  final q3 = TextEditingController(text: '').obs;
  final q4 = TextEditingController(text: '').obs;
  final q5 = TextEditingController(text: '').obs;
  final q6 = TextEditingController(text: '').obs;
  final q7 = TextEditingController(text: '').obs;
  final q8 = TextEditingController(text: '').obs;
  final q9 = TextEditingController(text: '').obs;
  final q10 = TextEditingController(text: '').obs;
  final q11 = TextEditingController(text: '').obs;
  final q12 = TextEditingController(text: '').obs;
  final q13 = TextEditingController(text: '').obs;
  final q14 = TextEditingController(text: '').obs;


  String? validateCommon(String value) {
    if (value.isEmpty) {
      return "Please fill now";
    }
    return null;
  }

  Future<void> testAPI(context) async {
    const url = 'http://192.168.0.103:5002/predict';


   if(q1.value.text.isEmpty || q2.value.text.isEmpty || q3.value.text.isEmpty
       || q4.value.text.isEmpty || q5.value.text.isEmpty
   || q6.value.text.isEmpty || q7.value.text.isEmpty || q8.value.text.isEmpty
       || q9.value.text.isEmpty || q10.value.text.isEmpty || q11.value.text.isEmpty || q12.value.text.isEmpty|| q13.value.text.isEmpty || q14.value.text.isEmpty)
   {
     snackbar("Fill-up all field",bgColor: red);
   }else{
     final body = {
       "input_data": [
         int.parse(q1.value.text.toString()),
         int.parse(q2.value.text.toString()),
         int.parse(q3.value.text.toString()),
         int.parse(q4.value.text.toString()),
         int.parse(q5.value.text.toString()),
         int.parse(q6.value.text.toString()),
         int.parse(q7.value.text.toString()),
         int.parse(q8.value.text.toString()),
         int.parse(q9.value.text.toString()),
         int.parse(q10.value.text.toString()),
         int.parse(q11.value.text.toString()),
         int.parse(q12.value.text.toString()),
         int.parse(q13.value.text.toString()),
         int.parse(q14.value.text.toString()),
       ]
     };
     print(body);
      try{
        final response = await http.post(
          Uri.parse(url),
          headers: {"Content-Type": "application/json"},
          body: jsonEncode(body),
        );

        if(response != null){
          print(response.statusCode);
          if(response.statusCode == 200){
            final jsonBody = json.decode(response.body);
            print(jsonBody);
            var c = jsonBody["confidence"]  * 100;
            var r = jsonBody["predicted_class"];
           var cc =  c.toStringAsFixed(2);
            if(r == 3 ){
              loadingDialog(cc: cc.toString(),r: "Severe anxiety ");
            }else if( r == 0){
              loadingDialog(cc: cc.toString(),r: "Minimal anxiety ");
            }else if( r == 1){
            loadingDialog(cc: cc.toString(),r: "Mild anxiety");
          }else if( r == 2){
              loadingDialog(cc: cc.toString(),r: "Moderate anxiety");
            }


          }
        }
      }catch(e){
        print(e.toString());
      }
   }




    }






}