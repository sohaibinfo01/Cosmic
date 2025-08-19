import 'package:flutter/material.dart';
import 'package:project2/listview.dart';
import 'package:project2/profile.dart';

class tabbardesign extends StatefulWidget {
  const tabbardesign({super.key});

  @override
  State<tabbardesign> createState() => _tabbardesignState();
}

class _tabbardesignState extends State<tabbardesign> {
  bool isBidSelected = true;
  bool isBuySelected = false;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 2, child:
      Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orange,
          title: Text("Tab bar",style: TextStyle(fontWeight: FontWeight.bold),),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 10),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                color: Colors.grey.shade300,
                borderRadius: BorderRadius.circular(30)
              ),
              child: Row(
                children: [
                  Expanded(child: InkWell(
                    borderRadius: BorderRadius.circular(30),
                    onTap: (){
                      setState(() {
                        isBidSelected = true;
                        isBuySelected = false;
                      });
                    },
                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: 12),
                      decoration: BoxDecoration(
                        color: isBidSelected ? Colors.green : Colors.transparent,
                        borderRadius: BorderRadius.circular(30)
                      ),
                      child: Center(
                        child: Text("Place Bid",
                        style: TextStyle(
                          color: isBidSelected  ? Colors.white : Colors.black,
                          fontWeight: FontWeight.bold
                        ),),
                      ),
                    ),
                  )),
                  Expanded(child: InkWell(
                    borderRadius: BorderRadius.circular(30),
                    onTap: (){
                      setState(() {
                        isBidSelected = false;
                        isBuySelected = true;
                      });
                    },
                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: 12),
                      decoration: BoxDecoration(
                        color: isBuySelected ? Colors.green : Colors.transparent,
                        borderRadius: BorderRadius.circular(30)
                      ),
                      child: Center(
                        child: Text("Buy now",style: TextStyle(
                          color: isBuySelected ? Colors.white : Colors.black,
                          fontWeight: FontWeight.bold
                        ),),
                      ),
                    ),
                  ))
                ],
              ),
            ),
            SizedBox(height: 10,),
            Expanded(child: isBidSelected ? listview() : profile(),)
          ],
        ),
      ) );
  }
}
