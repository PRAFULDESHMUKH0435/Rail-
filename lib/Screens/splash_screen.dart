import 'dart:async';

import 'package:flutter/material.dart';
import 'package:railsahayak/Constants/styles.dart';
import 'package:railsahayak/Screens/home_screen.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
@override
  void initState() {
    // TODO: implement initState
    Timer(Duration(seconds: 5), (){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>HomeScreen()));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Container(
        height: double.infinity,
        width: double.infinity,
        decoration:const BoxDecoration(
          color: Colors.red,
          image: DecorationImage(
            image: AssetImage('assets/images/splash_img.jpeg'),
            fit: BoxFit.cover
            )
        ),
        child: Container(
          margin:EdgeInsets.only(bottom: 50),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text("भारतीय रेल",style:AppStyles.splashtextstyle),
              Text("भारत की रेल, भारत की पहचान है|",style: AppStyles.splashtextstyle,),
            ],
          ),
        ),
      ),
    );
  }
}