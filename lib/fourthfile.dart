import 'package:flutter/material.dart';

class fourth extends StatefulWidget {
  const fourth({super.key});

  @override
  State<fourth> createState() => _fourthState();
}

class _fourthState extends State<fourth> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            children: [Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 150,
                width: 151,
                color: Colors.blue,
              ),
            ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 150,
                  width: 150,
                  color: Colors.black,
                ),
              )
            ],
          ),
          Row(
            children: [Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 150,
                width: 150,
                color: Colors.green,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 150,
                width: 150,
                color: Colors.grey,
              ),
            )
            ],
          ),
          Row(
            children: [Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.red,
                  image: DecorationImage(
                      image:AssetImage("assets/mypic.jpeg")),
                  border: Border.all(color: Colors.black)
                ),
                height: 150,
                width: 150,

              ),
            ),Container(
              decoration: BoxDecoration(
                color:Colors.amber,
                image: DecorationImage(
                    image:AssetImage("assets/mypic.jpeg")),
                border: Border.all(color: Colors.black38),
                borderRadius: BorderRadius.circular(20),
                boxShadow: [BoxShadow(
                  color: Colors.black38
                )
              ]
              ),
            height: 150,
            width: 150,
    )
          ]
          )
    ],
    )
    );
  }
}