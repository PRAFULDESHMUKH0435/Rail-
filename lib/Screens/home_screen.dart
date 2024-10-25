import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:railsahayak/Constants/styles.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();

 
}

class _HomeScreenState extends State<HomeScreen> {

 final List<String> imagelist =[
    "assets/images/slider_one.jpeg",
    "assets/images/slider_two.jpeg",
    "assets/images/slider_three.jpeg",
    "assets/images/slider_four.jpeg",
  ];

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      drawer: Drawer(),
      appBar:AppBar(
        backgroundColor:Colors.red,
        title: Text("Rail सहायक",style: AppStyles.appbartextstyle,),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.notifications_active,color: Colors.white,))
        ],
      ),
      body: Container(
        color:Colors.green,
        child: Column(
          children: [
            /// AutoImage Slider Container
            Container(
              width: double.infinity,
              height: 200,
              color: Colors.white,
              margin: EdgeInsets.symmetric(horizontal: 5.0),
              child: CarouselSlider(
                items: imagelist.map((item) => buildEachImage(item)).toList(),
                 options: CarouselOptions(
                  autoPlay: true
                 )),
            ),
            /// PNR Status Section
            
          ]
        ),
      ),
    );
  }
  

  Widget buildEachImage(String imagepath){
     return Container(
      margin:EdgeInsets.symmetric(horizontal: 5.0,vertical: 2.0),
      height: 200,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius:BorderRadius.circular(14.0),
        image: DecorationImage(
          image: AssetImage(imagepath),
          fit: BoxFit.cover)
      ),
     );
  }
}