import 'package:date_format/date_format.dart';
import 'package:flutter/material.dart';
import 'package:project2/linechart.dart';

class textfields extends StatefulWidget {
  const textfields({super.key});

  @override
  State<textfields> createState() => _textfieldsState();
}

class _textfieldsState extends State<textfields> {

  final _formkey = new GlobalKey<FormState>();
  TextEditingController name = TextEditingController();
  TextEditingController username = TextEditingController();
  TextEditingController emailaddress = TextEditingController();
  TextEditingController password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Form(
      key : _formkey,
      child :Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Center(child: Text("   My Zong",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 26),)),
        leading: Icon(Icons.person_3_rounded,color: Colors.white,size: 28,),
        actions: [
          Icon(Icons.menu,color: Colors.white,size: 30,),
          SizedBox(width: 15,),
          Icon(Icons.settings,color: Colors.white,size: 28,),
          SizedBox(width: 15,),
        ],
      ),
      body: Center(
        child: SingleChildScrollView(
        child: Container(
          height: 500,
          width: 320,
          decoration: BoxDecoration(
            color: Colors.green,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            children: [
              SizedBox(height: 20,),
              Container(
                height: 50,
                width: 240,
                child: Text("Create your account",style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold),),
              ),
              SizedBox(height: 8,),
              Container(
                height: 80,
                width: 300,
                child: TextFormField(
                  controller: name,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return " Name is required";
                    }
                    if(value.length <6) {
                      return "Name must be at least 6 characters";
                    }
                    if (value.length>10) {
                      return"Name must be less than 10 characters";
                    }
                    if (value !=value!.trim()) {
                      return "Remove spaces at start/end";
                    }
                    if (!RegExp(r'^[A-Za-z0-9_]+$').hasMatch(value)) {
                      return "Only lowercase letters, numbers and _ allowed";
                    }
                    if (RegExp(r'\s{2,}').hasMatch(value)) {
                      return "Only single space allowed";
                    }
                    if (RegExp(r"(--|''|\.\.)").hasMatch(value)) {
                      return "Avoid repeating punctuation";
                    }
                    return null;
                  },
                  cursorColor: Colors.white,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    hintText: "Enter your name",
                    hintStyle: TextStyle(
                      color: Colors.white
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25),
                      borderSide: BorderSide(
                        color: Colors.grey,
                        width: 3
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25),
                      borderSide: BorderSide(
                        color: Colors.black
                      )
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25),
                      borderSide: BorderSide(
                        color: Colors.grey
                      )
                    ),
                    errorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25),
                      borderSide: BorderSide(
                        color: Colors.red
                      )
                    )
                  ),
                ),
              ),
              Container(
                height: 80,
                width: 300,
                child: TextFormField(
                  controller: username,
                  validator: (value) {
                    if (value == null || value.isEmpty){
                      return "Username is required";
                    }
                    if (value.length<6){
                      return "Username must be at least 6 characters";
                    }
                    if (value.length>12){
                      return "Username must be less than 12 characters";
                    }
                    if (value.contains("  ")) {
                      return "Spaces are not allowed";
                    }
                    if (value.startsWith("_")|| value.endsWith("_")) {
                      return "Cannot start or end with underscore";
                    }
                    if (!RegExp(r'[a-z]').hasMatch(value)) {
                      return "Username must contain at least one letter";
                    }
                    return null;
                  },
                  cursorColor: Colors.white,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    hintText: "Enter your username",
                    hintStyle: TextStyle(
                      color: Colors.white
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25),
                      borderSide: BorderSide(
                        color: Colors.grey,
                        width: 3
                      )
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25),
                      borderSide: BorderSide(
                        color: Colors.black
                      )
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25),
                      borderSide: BorderSide(
                        color: Colors.grey
                      )
                    ),
                    errorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25),
                      borderSide: BorderSide(
                        color: Colors.red
                      )
                    )
                  ),
                ),
              ),
              Container(
                height: 80,
                width: 300,
                child: TextFormField(
                  controller: emailaddress,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Email is required";
                    }
                    if (value.length<6) {
                      return "Email too short";
                    }
                    if (!value.contains("@")) {
                      return "Email must contain @";
                    }
                    if (!value.contains(".") || value.endsWith(".")) {
                      return "Invalid domain format";
                    }
                    if (value.startsWith("@") || value.endsWith("@")) {
                      return "Invalid placement of @";
                    }
                    if (value.contains(" ")) {
                      return "Email cannot contain spaces";
                    }
                    if (!RegExp(r'^[^@]+@[^@]+\.[^@]+').hasMatch(value)) {
                      return "Enter a valid email";
                    }
                    if (!RegExp(r'\.[a-zA-Z]{2,}$').hasMatch(value)) {
                      return "Invalid domain name";
                    }
                    return null;
                    },
                  cursorColor: Colors.white,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    hintText: "Enter your email address",
                    hintStyle: TextStyle(
                      color: Colors.white,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25),
                        borderSide: BorderSide(
                        color: Colors.grey,
                        width: 3
                      )
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25),
                      borderSide: BorderSide(
                        color: Colors.black
                      )
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25),
                      borderSide: BorderSide(
                        color: Colors.grey
                      )
                    ),
                    errorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25),
                      borderSide: BorderSide(
                        color: Colors.red
                      )
                    )
                  ),
                ),
              ),
              Container(
                height: 80,
                width: 300,
                child: TextFormField(
                  controller: password,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Password is required";
                    }
                    if (value.length<8) {
                      return "Password must be at least 8 characters";
                    }
                    if (value.length>12) {
                      return "Password too long";
                    }
                    if (!RegExp(r'[A-Z]').hasMatch(value)) {
                      return "Must contain at least 1 uppercase letter";
                    }
                    if (!RegExp(r'[a-z]').hasMatch(value)) {
                      return "Must contain at least 1 lowercase letter";
                    }
                    if (!RegExp(r'[0-9]').hasMatch(value)) {
                      return "Must contain at least 1 number";
                    }
                    if (!RegExp(r'[!@#\$%\^&\*\(\)_\+\-=\[\]{};:"\\|,.<>\/?]').hasMatch(value)) {
                      return "Must contain at least 1 special character";
                    }
                    if (value.contains("  ")) {
                      return "Password cannot contain spaces";
                    }
                    return null;
                  },
                  cursorColor: Colors.white,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    hintText: "Enter your password",
                    hintStyle: TextStyle(
                      color: Colors.white
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25),
                      borderSide: BorderSide(
                        color: Colors.grey,
                        width: 3
                      )
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25),
                      borderSide: BorderSide(
                        color: Colors.black
                      )
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25),
                      borderSide: BorderSide(
                        color: Colors.grey
                      )
                    ),
                    errorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25),
                      borderSide: BorderSide(
                        color: Colors.red
                      )
                    )
                  ),
                ),
              ),
              SizedBox(height: 10,),
              Container(
                height: 50,
                width: 150,
                decoration: BoxDecoration(
                  color: Colors.black45,
                  borderRadius: BorderRadius.circular(25),
                  border: Border.all(color: Colors.black26,width: 2)
                ),
                child: TextButton(onPressed: () {
                  if (_formkey.currentState!.validate())
                    Navigator.push(
                      context,
                    MaterialPageRoute(builder: (context) => linechart()));
                },
                    child:Text("Sign up",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),) ),
              )
            ],
          ),
        ),
      ),
      )
      )
    );
  }
}
