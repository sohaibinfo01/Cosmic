import 'package:flutter/material.dart';
import 'package:date_format/date_format.dart';
class datefile extends StatefulWidget {
  const datefile({super.key});

  @override
  State<datefile> createState() => _datefileState();
}

class _datefileState extends State<datefile> {
  final TextEditingController _controller = TextEditingController();
  Future<void> _selecteddate(BuildContext context) async{
    DateTime? pickeddate = await showDatePicker(context: context,
        initialDate: DateTime.now() ,
        firstDate: DateTime(2000), lastDate: DateTime(2100));
    if (pickeddate != null) {
      String  dateselect = formatDate(pickeddate,[dd,'/',mm,'/',yyyy]);
      setState(() {
        _controller.text = dateselect;
      });
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Calender"),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: [
          SizedBox(height: 60,),
          Container(
            height: 60,
            width: 360,
            child:TextFormField(
              controller: _controller,
            style: TextStyle(color: Colors.black),
            cursorColor: Colors.blue,
            readOnly: true,
            decoration: InputDecoration(
              hintText: "Select Date",
              fillColor: Colors.white,
              suffixIcon: IconButton(onPressed: () {
                _selecteddate(context);
              }, icon: Icon(Icons.calendar_today,size: 26,color: Colors.blue,)),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(24),
                borderSide: BorderSide(color: Colors.grey,width: 2)
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(25),
                borderSide: BorderSide(color: Colors.blue,width: 2)
              ),
            ),
            keyboardType: TextInputType.datetime,
          )
          ),
        ],
      ),
    );
  }
}
