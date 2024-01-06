import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loneliness_direction/common/configs/appColors.dart';
import 'package:loneliness_direction/common/configs/appUnits.dart';
import 'package:loneliness_direction/controller/homeController.dart';
import 'package:loneliness_direction/widgets/buttonWidgets.dart';
import 'package:loneliness_direction/widgets/cFromField.dart';
import 'package:loneliness_direction/widgets/kText.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {

   HomeController controller = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
   // final  controller = Get.put(HomeController());
    return Scaffold(
      appBar: AppBar(
        backgroundColor: green,
        centerTitle: true,elevation: 0,
        title: KText(text: "Cheek Your Mental Health",fontSize: 18,fontWeight: FontWeight.w400,color: white,),
      ),
      body: Obx( ()=> SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: SizedBox(
              height: Get.height,width: Get.width,
              child: ListView(
                scrollDirection: Axis.vertical,
                padding: const EdgeInsets.symmetric(horizontal: 12,vertical: 3),
                children: [

                  cFormField(
                    titleText: "1.Occupation",subtitle: "(low=0,High=3)",
                      width: 200,height: 40,fontSize: 17,titleTextSize: 17,
                    hint: "Enter here",
                    inputType: TextInputType.number,
                    borderRadius: 12,
                    borderColor: blue,maxLength: 2,
                    controller: controller.q1.value,
                    validator:(value) {
                      return controller.validateCommon(value!);
                    }

                    ),
                      cFormField(
                      titleText: "2.Economic status",subtitle: "(Low=1 to High=3)",
                      width: 200,height: 40,fontSize: 17,titleTextSize: 17,
                      hint: "Low-0 , High-1",
                      inputType: TextInputType.number,
                      borderRadius: 12,
                      borderColor: blue,maxLength: 1,
                      controller: controller.q2.value
                      ),
                      cFormField(
                      titleText: "3.GAD 1",subtitle: "(low=0,High=3)",
                      width: 200,height: 40,fontSize: 17, titleTextSize: 17,
                      hint: "Min-0,Max-3",
                      inputType: TextInputType.number,
                      borderRadius: 12,
                      borderColor: blue,maxLength: 1,
                      controller: controller.q3.value
                  ),

                  cFormField(
                      titleText: "4.GAD 2",subtitle: "(low=0,High=3)",
                      width: 200,height: 40,fontSize: 17,titleTextSize: 17,
                      hint: "Enter here",
                      inputType: TextInputType.number,
                      borderRadius: 12,
                      borderColor: blue,maxLength: 3,
                      controller: controller.q4.value
                  ),

                  cFormField(
                      titleText: "5.GAD 3",subtitle: "(low=0,High=3)",
                      width: 200,height: 40,fontSize: 17,titleTextSize: 17,
                      hint: "Enter here",
                      inputType: TextInputType.number,
                      borderRadius: 12,
                      borderColor: blue,maxLength: 3,
                      controller: controller.q5.value
                  ),

                  cFormField(
                      titleText: "6.GAD 4",subtitle: "(low=0,High=3)",
                      width: 200,height: 40,fontSize: 17,titleTextSize: 17,
                      hint: "(low=0,High=3)",
                      inputType: TextInputType.number,
                      borderRadius: 12,
                      borderColor: blue,maxLength: 1,
                      controller: controller.q6.value
                  ),

                  cFormField(
                      titleText: "7.GAD 5",subtitle: "(low=0,High=3)",
                      width: 200,height: 40,fontSize: 17,titleTextSize: 17,
                      hint: "Enter here",
                      inputType: TextInputType.number,
                      borderRadius: 12,
                      borderColor: blue,maxLength: 1,
                      controller: controller.q7.value
                  ),

                  cFormField(
                      titleText: "8.GAD 6",subtitle: "(low=0,High=3)",
                      width: 200,height: 40,fontSize: 17,titleTextSize: 17,
                      hint: "Enter here",
                      inputType: TextInputType.number,
                      borderRadius: 12,
                      borderColor: blue,maxLength: 3,
                      controller: controller.q8.value
                  ),

                  cFormField(
                      titleText: "9.GAD 7",subtitle: "(low=0,High=3)",
                      width: 200,height: 40,fontSize: 17,titleTextSize: 17,
                      hint: "Enter min-0,max-3",
                      inputType: TextInputType.number,
                      borderRadius: 12,
                      borderColor: blue,maxLength: 1,
                      controller: controller.q9.value
                  ),

                  cFormField(
                      titleText: "10.UCLA-6",subtitle: "(low=1,High=4)",
                      width: 200,height: 40,fontSize: 17,titleTextSize: 17,
                      hint: "Enter min-1,max-4",
                      inputType: TextInputType.number,
                      borderRadius: 12,
                      borderColor: blue,maxLength: 1,
                      controller: controller.q10.value
                  ),

                  cFormField(
                      titleText: "11.UCLA-8",subtitle: "(low=1,High=4)",
                      width: 200,height: 40,fontSize: 17,titleTextSize: 17,
                      hint: "Enter min-1,max-4",
                      inputType: TextInputType.number,
                      borderRadius: 12,
                      borderColor: blue,maxLength: 1,
                      controller: controller.q11.value
                  ),

                  cFormField(
                      titleText: "12.PHQ-2",subtitle:  "(low=0,High=3)",
                      width: 200,height: 40,fontSize: 17,titleTextSize: 17,
                      hint: "Enter min-0,max-3",
                      inputType: TextInputType.number,
                      borderRadius: 12,
                      borderColor: blue,maxLength: 1,
                      controller: controller.q12.value,
                  ),
                  cFormField(
                    titleText: "13.PHQ-3",subtitle:  "(low=0,High=3)",
                    width: 200,height: 40,fontSize: 17,titleTextSize: 17,
                    hint: "Enter min-0,max-3",
                    inputType: TextInputType.number,
                    borderRadius: 12,
                    borderColor: blue,maxLength: 1,
                    controller: controller.q13.value,
                  ),
                  cFormField(
                    titleText: "14.PHQ-4",subtitle:  "(low=0,High=3)",
                    width: 200,height: 40,fontSize: 17,titleTextSize: 17,
                    hint: "Enter min-0,max-3",
                    inputType: TextInputType.number,
                    borderRadius: 12,
                    borderColor: blue,maxLength: 1,
                    controller: controller.q14.value,
                  ),
                  sizeH25,
                  ButtonLTD(onTap: ()=>controller.testAPI(context),
                    radius: 12,height: 40,width: 217,
                    bgColor: blue,
                    widget: KText(text: "Find Results",color: white,),
                  ),
                  sizeH25,

                ],
              ),
            ),
          )
        ),
    );
  }
}
