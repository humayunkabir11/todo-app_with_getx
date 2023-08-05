import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:todo_app/utils/colors.dart';
import 'package:todo_app/utils/images.dart';
import 'package:todo_app/view/screens/bottomnav/bottom_nav_screen.dart';
import 'package:todo_app/view/screens/home/home_screen.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState(){
    Timer(const Duration(seconds: 3), () {
      Get.to(const HomeScreen());
   // Navigator.push(context, MaterialPageRoute(builder: (_)=>HomeScreen()));
    });
     super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FractionallySizedBox(
              // heightFactor: 0.6,
              widthFactor: 0.6,
                child: Image.asset(AppImages.splash_logo)),
            SizedBox(height: 40,),
           FittedBox(child: Text("GOOGLE WORKSPACE",style: TextStyle(color: AppColors.primaryColor,fontSize: 30),))
          ],
        ),
      ),
    );
  }
}
