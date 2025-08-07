import 'package:flutter/material.dart';

import 'myappfile.dart';

class register extends StatefulWidget {
  const register({super.key});

  @override
  State<register> createState() => _registerState();
}

class _registerState extends State<register> {
  
  bool _obscureText =true;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body:ListView(
        children: [ Container(
        height: 900,
        width: 400,
        child: Column(
            children: [
              Container(
                height: 250,
                width: 300,
                child: Image.asset("assets/file.jpeg"),
              ),
              SizedBox(height: 10,),
              Container(
                margin: EdgeInsets.only(right: 10),
                height: 50,
                width: 300,
                child: Text("Register",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 32,color: Colors.indigo),),
              ),
              Container(
                margin: EdgeInsets.only(right: 10),
                height: 40,
                width: 300,
                child: Text("Please register to login.",style: TextStyle(color: Colors.indigo),),
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
              SizedBox(height: 10,),
              Container(
                height: 60,
                width: 320,
                child: TextFormField(
                  decoration: InputDecoration(
                      hintText: "Mobile Number",
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
              SizedBox(height: 10,),
              Container(
                height: 60,
                width: 320,
                child: TextFormField(
                  decoration: InputDecoration(
                      hintText: "Password",
                      prefixIcon: Icon(Icons.person_outline),
                      suffixIcon: IconButton(
                        icon: Icon(
                            _obscureText? Icons.visibility_off :Icons.visibility),
                        onPressed: () {
                          setState(() {
                            _obscureText=!_obscureText;
                          });
                        },
                      ),
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
              SizedBox(height: 5,),
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 28),
                    child: Text("Reminder me later"),
                  )
                ],
              ),
              SizedBox(height: 24,),
              Container(
                width: 320,
                child:
                ElevatedButton(
                  onPressed: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=> myapp()));
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor:Colors.indigo,
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 100,vertical: 15),
                  ),
                  child: Text("Sign Up",style: TextStyle(fontSize: 16),),
                ),
              ),
              SizedBox(height: 10,),
              InkWell(onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => myapp()));
              },
                child: RichText(
                    text: TextSpan(
                        style: TextStyle(color: Colors.black),
                        children: [
                          TextSpan(text: "Already have an account?"),
                          TextSpan(text: "Sign in",
                            style: TextStyle(fontWeight: FontWeight.bold,color: Colors.indigo),
                          ),
                        ]
                    )),
              )
            ]
        ),
        decoration: BoxDecoration(
          color: Colors.white70,
          borderRadius: BorderRadius.circular(30),
        ),
      )
    ],
      )
      );

  }
}
