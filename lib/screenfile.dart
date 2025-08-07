import 'package:flutter/material.dart';

class screen extends StatefulWidget {
  const screen({super.key});

  @override
  State<screen> createState() => _screenState();
}

class _screenState extends State<screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          margin: EdgeInsets.only(left: 32),
          height: 650,
          width: 280,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            children: [
              Container(
                child: Padding(
                  padding: const EdgeInsets.only(top: 36),
                  child: Text("NOBANK",style: TextStyle(color: Colors.grey,),),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 65),
                child: Image.asset("assets/image1.jpeg"),
              ),
              Container(
                child: Center(child: Text("  The first bank\n without a bank",style: TextStyle(fontSize: 26,fontWeight:FontWeight.bold),)),
              ),
              Container(
                child: Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Text("  join the nobank experience,\n       entirely online,no jokes.",style: TextStyle(color: Colors.black26),),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 89),
              height: 35,
                width: 136,
                decoration:BoxDecoration(
                  color: Colors.black87,
                    borderRadius: BorderRadius.circular(20)),
                child: Center(child: Text("Enter",style: TextStyle(color: Colors.white,fontSize: 18),)),
              )
            ],
          ),
        ),
      ),
    );
  }
}
