import 'package:flutter/material.dart';

class testfile extends StatefulWidget {
  const testfile({super.key});

  @override
  State<testfile> createState() => _testfile();
}

class _testfile extends State<testfile> {
  bool isChecked = false;
  int? selectedIndex;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Checkbox And Radio"),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Checkbox(
                value: isChecked,
                onChanged: (index) {
                  setState(() {
                    isChecked = index!;
                  });
                },
              ),
              Text("Accept Terms"),
            ],
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Radio<int>(
                value: 1,
                groupValue: selectedIndex,
                onChanged: (index) {
                  setState(() {
                    selectedIndex = index;
                  });
                },
              ),
              Text("Option 1"),
              Radio<int>(
                value: 2,
                groupValue: selectedIndex,
                onChanged: (index) {
                  setState(() {
                    selectedIndex = index;
                  });
                },
              ),
              Text("Option 2"),
            ],
          ),
        ],
      ),
    );
  }
}
