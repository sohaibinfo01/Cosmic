import 'package:flutter/material.dart';
import 'package:cupertino_icons/cupertino_icons.dart';

class myapp extends StatefulWidget {
  const myapp({super.key});

  @override
  State<myapp> createState() => _myappState();
} 

class _myappState extends State<myapp> {

  bool passwordvisibility = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body:ListView(
        children: [
          Container(
            // margin: EdgeInsets.only(right: 28),
            height: 800,
            width: 400,
            child: Column(
              children: [
                Container(
                  height: 250,
                  width: 320,
                  margin: EdgeInsets.only(left: 20, right: 20),
                  // margin: EdgeInsets.only(top: 1),
                  child: Image.asset("assets/myapp.jpeg",height: 350,width: 300,),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 45,
                  width: 320,
                  margin: EdgeInsets.only(left: 20),
                  child: Text("Login",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.indigo),),
                ),
                Container(
                  height: 50,
                  width: 320,
                  margin: EdgeInsets.only(left: 20),
                  child: Text("Please Sign in to continue.",style: TextStyle(color: Colors.indigo,),),
                ),
                Container(
                  height: 60,
                  width: 320,
                  child: TextFormField(
                    decoration: InputDecoration(
                        hintText: "Username",
                        prefixIcon: Icon(Icons.person_outline),
                        filled: true,
                        fillColor: Colors.grey[100],
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25),
                            borderSide: BorderSide.none
                        )
                    ),
                    keyboardType: TextInputType.emailAddress,
                  ),
                ),
                Container(
                  height: 60,
                  width: 320,
                  child: TextFormField(
                    decoration: InputDecoration(
                        hintText: "Password",
                        prefixIcon: Icon(Icons.person_outline),
                        filled: true,
                        fillColor: Colors.grey[100],
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25),
                            borderSide: BorderSide.none
                        )
                    ),
                    keyboardType: TextInputType.emailAddress,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(right: 100),
                  height: 30,
                  width: 200,
                  child: Text("Remember me password",style: TextStyle(color: Colors.grey),),
                ),
                Container(
                  height: 40,
                  width: 320,
                  decoration: BoxDecoration(
                      color: Colors.indigo,
                      borderRadius: BorderRadius.circular(20)
                  ),
                  child: Center(child: Text("Sign in",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),),
                ),
                SizedBox(height: 10,),
                RichText(
                    text: TextSpan(
                        style: TextStyle(color: Colors.black),
                        children: [
                          TextSpan(text: "Already have an account?"),
                          TextSpan(text: "Sign in",
                            style: TextStyle(fontWeight: FontWeight.bold,color: Colors.indigo),
                          ),
                        ]
                    ))
              ]
            ),
          decoration: BoxDecoration(
            color: Colors.white70,
            borderRadius: BorderRadius.circular(30),
          ),
      ),
      ],
      )
            );
  }
}
