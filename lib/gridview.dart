import 'package:flutter/material.dart';

class gridview extends StatefulWidget {
  const gridview({super.key});

  @override
  State<gridview> createState() => _gridviewState();
}

class _gridviewState extends State<gridview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 600,
        width: 500,
        padding: EdgeInsets.all(30),
        color: Colors.purpleAccent,
        child: GridView(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),
          children: <Widget>[
            Container(
              height: 50,
              width: 200,
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: Colors.yellow,
                  borderRadius: BorderRadius.circular(30)
              ),
            ),

            Container(
              height: 50,
              width: 200,
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: Colors.brown,
                  borderRadius: BorderRadius.circular(30)
              ),
            ),

            Container(
              height: 50,
              width: 200,
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(30)
              ),
            ),

            Container(
              height: 50,
              width: 200,
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(30)
              ),
            ),

            Container(
              height: 50,
              width: 200,
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(30)
              ),
            ),

            Container(
              height: 50,
              width: 200,
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: Colors.amberAccent,
                  borderRadius: BorderRadius.circular(30)
              ),
            ),

            Container(
              height: 50,
              width: 200,
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: Colors.deepOrange,
                  borderRadius: BorderRadius.circular(30)
              ),
            ),

            Container(
              height: 50,
              width: 200,
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: Colors.deepPurple,
                  borderRadius: BorderRadius.circular(30)
              ),
            ),

            Container(
              height: 50,
              width: 200,
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(30)
              ),
            ),

            Container(
              height: 50,
              width: 200,
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: Colors.blueGrey,
                  borderRadius: BorderRadius.circular(30)
              ),
            ),

            Container(
              height: 50,
              width: 200, margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: Colors.indigo,
                  borderRadius: BorderRadius.circular(30)
              ),
            ),

            Container(
              height: 50,
              width: 200,
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: Colors.orange,
                  borderRadius: BorderRadius.circular(30)
              ),
            ),

            Container(
              height: 50,
              width: 200,
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: Colors.pink,
                  borderRadius: BorderRadius.circular(30)
              ),
            ),

            Container(
              height: 50,
              width: 200,
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: Colors.purpleAccent,
                  borderRadius: BorderRadius.circular(30)
              ),
            ),
            // FlutterLogo(),
            // FlutterLogo(),
            // FlutterLogo(),
            // FlutterLogo(),
            // FlutterLogo(),
            // FlutterLogo(),
            // FlutterLogo(),
            // FlutterLogo(),
            // FlutterLogo(),
          ],
        ),
      ),
    );
  }
}
