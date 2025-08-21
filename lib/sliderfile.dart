import 'dart:async';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:project2/favourites.dart';
import 'package:project2/home.dart';
import 'package:project2/listview.dart';
import 'package:project2/profile.dart';

class sliderfile extends StatefulWidget {
  const sliderfile({super.key});

  @override
  State<sliderfile> createState() => _sliderfileState();
}

class _sliderfileState extends State<sliderfile> {
  String? selectoption;
  final List<String> imgList = [
    "assets/slide.png",
     "assets/slides.jpg",
      "assets/sport.jpg",
       "assets/sing.jpg",
];

  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 15),(){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => home()));
    });
  }
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Facebook",style: TextStyle(fontWeight: FontWeight.bold),),
        backgroundColor: Colors.blue,
        leading: Icon(Icons.person_outline,size: 30,),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Icon(Icons.menu,size: 30,),
          )
        ],
      ),
      body: Column(
        children: [
          SizedBox(height: 50,),
          CarouselSlider(
              options: CarouselOptions(
                height: 200,
              autoPlay: true,
              enlargeCenterPage: true,
                  aspectRatio: 16 / 9,
                  autoPlayInterval: Duration(seconds: 3),
                autoPlayAnimationDuration: Duration(milliseconds: 800),
                viewportFraction: 0.8,
              ),items: imgList.map((item) {
      return ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: Image.asset(
          item,
          fit: BoxFit.cover,
          width: double.infinity,
        ),
      );
          }).toList(),
          ),
          SizedBox(height: 140,
          ),
          Container(
            height: 50,
            width: 50,
            child: CircularProgressIndicator(
              strokeWidth: 5,
              color: Colors.blueAccent,
              backgroundColor: Colors.grey.shade300,
            ),
          ),
          SizedBox(height: 20,),
          Container(
            margin: EdgeInsets.only(left: 20),
            height: 30,
            width: 130,
            child: Text("Loading the files"),
          ),
          SizedBox(height: 30,),
          Container(
            height: 60,
            width: 180,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: Colors.blue,width: 2)
            ),
            child: DropdownButton<String>(
              hint: Text("Select Gender",style: TextStyle(fontWeight: FontWeight.bold),),
              value: selectoption,
                items: <String>[' Male',' Female'].map((String value)
                { return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value));
                }).toList(),
                onChanged: (String? newValue) {
                setState(() {
                  selectoption = newValue!;
                });
                },
          )
          )
        ],
      ),
    );
  }
}
