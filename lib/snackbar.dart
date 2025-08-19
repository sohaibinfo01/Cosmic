import 'package:flutter/material.dart';

class snackbar extends StatefulWidget {
  const snackbar({super.key});

  @override
  State<snackbar> createState() => _snackbarState();
}

class _snackbarState extends State<snackbar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child:
            ElevatedButton(onPressed: (){
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: const Text('Item added to cart!'),
                  action: SnackBarAction(
                    label: 'Undo',
                    onPressed: () {},
                  ),
                  duration: const Duration(seconds: 3),
                  backgroundColor: Colors.black45,
                ),
              );
            },child: Text("Item added sucessfully"),)
        ),
    );
  }
}
