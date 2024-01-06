

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/utils.dart';
import 'package:lottie/lottie.dart';
import '../home/homeView.dart';
class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    setState(() {
      loadingPage();
    });
  }

  void loadingPage()async{
    await Future.delayed(const Duration(seconds: 5), () {
      Get.off(const HomeView());
    });
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Lottie.asset('assets/splash.json',height: Get.height,width: Get.width,fit: BoxFit.fill),
    );
  }
}