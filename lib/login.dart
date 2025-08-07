import 'package:flutter/material.dart';
import 'package:project2/home.dart';
import 'package:project2/listview.dart';

class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {

  final _formKey = new GlobalKey<FormState>();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          child: Stack(
            children: [
              Container(
                height: 900,
                width: 400,
                child: Image.asset("assets/splash.png", fit: BoxFit.cover,),
              ),
              Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 30),
                    child: Center(
                        child: Image(image: AssetImage("assets/vector.png"))),
                  ),
                  Container(
                      margin: EdgeInsets.only(top: 120),
                      height: 550,
                      width: 360,
                      decoration: BoxDecoration(
                        color: Colors.black45,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Column(
                        children: [
                          Container(
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 30, left: 35),
                                  child: Text("Sign in", style: TextStyle(
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 12,),
                          Container(
                            height: 50,
                            width: 300,
                            child: TextFormField(
                              controller: email,
                              style: TextStyle(color: Colors.white),
                              cursorColor: Colors.black,
                              decoration: InputDecoration(
                                hintText: "Username",
                                filled: true,
                                fillColor: Colors.black,
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(25),
                                    borderSide: BorderSide(
                                        color: Colors.grey, width: 2)
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(25),
                                  borderSide: BorderSide(
                                      color: Colors.white, width: 2
                                  ),
                                ),
                              ),
                              keyboardType: TextInputType.emailAddress,
                            ),
                          ),
                          SizedBox(height: 30,),
                          Container(
                            height: 50,
                            width: 300,
                            child: TextFormField(
                              controller: password,
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter your password';
                                } else if (value.contains('@')) {
                                  return 'Please don\'t use the @ char.';

                                } else if( value.length < 8 ){
                                  return 'Please Must be 8 characters';
                                }
                                return null;
                              },
                              style: TextStyle(color: Colors.white),
                              cursorColor: Colors.black,
                              decoration: InputDecoration(
                                  hintText: "Password",
                                  filled: true,
                                  fillColor: Colors.black,
                                  enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(25),
                                      borderSide: BorderSide(
                                          color: Colors.grey, width: 2
                                      )
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(25),
                                      borderSide: BorderSide(
                                          color: Colors.white, width: 2
                                      )
                                  )
                              ),
                              keyboardType: TextInputType.text,
                            ),
                          ),
                          SizedBox(height: 15,),
                          Container(
                            margin: EdgeInsets.only(left: 17),
                            height: 50,
                            width: 300,
                            child: Text("Forgot Password?",
                              style: TextStyle(fontSize: 20, color: Color(
                                  0xff11DCE8)),),
                          ),
                          Container(
                            height: 50,
                            width: 300,
                            decoration: BoxDecoration(
                                gradient: const LinearGradient(colors: [
                                  Color(0xFFF961FF),
                                  Color(0xFF72A5F2),
                                  Color(0xFF00E5E5)
                                ],
                                ),
                                borderRadius: BorderRadius.circular(25),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black26,
                                    blurRadius: 6,
                                    offset: Offset(0, 3),
                                  )
                                ]
                            ),
                            child: TextButton(
                              onPressed: () {
                                print('Button Working');
                                print(email.text.toString());
                                print(password.text.toString());
                                _formKey.currentState!.validate();
                                // Navigator.push(
                                //   context,
                                //   MaterialPageRoute(builder: (context) => home()),
                                // );
                              },
                              style: TextButton.styleFrom(
                                  padding: EdgeInsets.zero,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(30)
                                  )
                              ),
                              child: Text("Sign in", style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),),
                            ),
                          ),
                          SizedBox(height: 20,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Expanded(child: Divider(
                                color: Colors.grey,
                                thickness: 1,
                                indent: 20,
                                endIndent: 10,
                              )),
                              Text("or sign in using", style: TextStyle(
                                  color: Colors.grey),),
                              Expanded(child: Divider(color: Colors.grey,
                                thickness: 1,
                                indent: 20,
                                endIndent: 10,))
                            ],
                          ),
                          SizedBox(height:20,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(color: Colors.black,width: 2)
                                ),
                              child: CircleAvatar(
                                backgroundImage: AssetImage("assets/t.png"),
                              ),
                              ),
                              SizedBox(width: 8,),
                              Container(
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(color :Colors.black,width: 2)
                                ),
                                child: CircleAvatar(
                                  backgroundImage: AssetImage("assets/g.png"),
                                ),
                              ),
                              SizedBox(width: 8,),
                              Container(
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(color: Colors.black,width: 2)
                                ),
                                child: CircleAvatar(
                                  backgroundImage: AssetImage("assets/f.png"),
                                ),
                              )
                            ],
                          ),
                          SizedBox(height: 20,),
                          Center(
                            child: Container(
                                child: RichText(
                                    text: TextSpan(
                                        style: TextStyle(
                                            color: Colors.grey
                                        ),
                                        children: [
                                          TextSpan(
                                              text: "Don't have an account?"),
                                          TextSpan(text: "  Sign Up",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  color: Color(0xff11DCE8)))
                                        ]
                                    ))
                            ),
                          )
                        ],
                      )
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}