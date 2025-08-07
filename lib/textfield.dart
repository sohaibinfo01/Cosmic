import 'package:flutter/material.dart';

class text extends StatefulWidget {
  const text({super.key});

  @override
  State<text> createState() => _textState();
}

class _textState extends State<text> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 600,
          width: 300,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(16)
          ),
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 60),
                child: Text("Log In",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
              ),
              Container(
                margin: EdgeInsets.only(top: 150),
                height: 100,
                width: 320,
                child: TextFormField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  hintText: "Please enter your email",
                  hintStyle: TextStyle(
                    color: Colors.black38,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16),
                    borderSide: BorderSide(
                      color: Colors.white10,
                      width: 2,
                    )
                  ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16),
                      borderSide: BorderSide(
                        color: Colors.black26
                      )
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16),
                      borderSide: BorderSide(
                        color: Colors.black26,

                      )
                    )
                ),),
              ),
              Container(
                margin: EdgeInsets.only(top: 7),
                height: 100,
                width: 320,
                child: TextFormField(
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                      hintText: "Please enter your password",
                      hintStyle: TextStyle(
                        color: Colors.grey,
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(16),
                          borderSide: BorderSide(
                            color: Colors.black12,
                            width: 2,
                          )
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16),
                          borderSide: BorderSide(
                              color: Colors.black54
                          )
                      ),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(16),
                          borderSide: BorderSide(
                            color: Colors.black26,

                          )
                      )
                  ),),
              ),
              Container(
                height: 40,
                width: 100,
                child: Center(child: Text("Sign In",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),)),
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(16)
                ),
              )

            ],
          ),
        ),
      ),
    );
  }
}
