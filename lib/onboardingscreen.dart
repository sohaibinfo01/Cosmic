import 'package:date_format/date_format.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class onboardingscreen extends StatefulWidget {
  const onboardingscreen({super.key});

  @override
  State<onboardingscreen> createState() => _onboardingscreenState();
}

class _onboardingscreenState extends State<onboardingscreen> {
  final controller = PageController();
  @override
  void dispose(){
    controller.dispose();
    super.dispose();
  }
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(bottom: 80),
      child:
      PageView(
        controller: controller,
        children: [
          Container(
          child: Image.asset("assets/splash.png",fit: BoxFit.cover,),
          ),
          Container(
            child: Image.asset("assets/splash.png",fit: BoxFit.cover,),
          ),
          Container(
            color: Colors.brown,
          child: Image.asset("assets/splash.png",fit: BoxFit.cover,),
          ),
          Container(
            child: Image.asset("assets/splash.png",fit: BoxFit.cover,),
          )
        ],
      ),
      ),
      bottomSheet: Container(
        height: 80,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TextButton(onPressed: ()=>controller.jumpToPage(2),
                child: Text("Skip")),
            Center(
              child: SmoothPageIndicator(controller: controller, count: 4,
              effect: WormEffect(
                spacing: 16,
                dotColor: Colors.black26,
                activeDotColor: Colors.teal.shade700
              ),
              onDotClicked: (index)=>controller.animateToPage(index, duration: Duration(milliseconds: 500),
                  curve: Curves.easeInOut),),
            ),
            TextButton(onPressed: ()=>controller.nextPage(duration: Duration(milliseconds: 500),
                curve: Curves.easeInOut),
                child: Text("Next")),

          ],
        ),
      ),
    );
  }
}
