import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class cameraacess extends StatefulWidget {
  const cameraacess({super.key});

  @override
  State<cameraacess> createState() => _cameraacessState();
}

class _cameraacessState extends State<cameraacess> {
  File? _image;
  final ImagePicker _picker = ImagePicker();

  Future<void> _pickFromCamera() async{
    final pickedFile = await _picker.pickImage(source: ImageSource.camera);
    if (pickedFile != null) {
      setState(() => _image = File(pickedFile.path));
    }
  }
  Future<void> _pickFromGallery() async{
    final pickedFile = await _picker.pickImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      setState(() => _image = File(pickedFile.path));
    }
  }
  void _showPicker (context) {
    showModalBottomSheet(context: context,
        builder: (BuildContext bc) {
      return SafeArea(child: Wrap(
        children: <Widget> [
          ListTile(
            leading: Icon(Icons.photo_library),
            title: Text("Gallery"),
            onTap: () {
              _pickFromGallery();
              Navigator.of(context).pop();
            },
          ),
          ListTile(
            leading: Icon(Icons.camera_alt),
            title: Text("Camera"),
            onTap: () {
              _pickFromCamera();
              Navigator.of(context).pop();
            },
          )
        ],
      ));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back,size: 24,),
        title: Text("Profile",style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),),
      ),
      body: Column(
          children: [
            Divider(color: Colors.grey.shade300,thickness: 1,),
            Stack(
              children: [
            CircleAvatar(
              radius: 85,
              backgroundImage: _image != null? FileImage(_image!): AssetImage("assets/profile.png")
              as ImageProvider,
            ),
                Positioned(
              bottom: 0,
              right: 0,
              child: Container(
                height: 43,
                width: 45,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.white,width: 2)
                ),
              padding: EdgeInsets.zero,
              child: IconButton(onPressed: (){
                _showPicker(context);
              }, icon: Icon(Icons.camera_alt ,color: Colors.white,size: 18,)),
            )
            ),
    ]
    ),
            ListTile(
              leading: Icon(Icons.person_outline,color: Colors.grey,size: 30,),
              title: Text("Name",style: TextStyle(color: Colors.black,),),
              subtitle: Text("Sohaib",style: TextStyle(color: Colors.grey),),
            ),
            ListTile(
              leading: Icon(Icons.error_outline,color: Colors.grey,size: 30,),
              title: Text("About",style: TextStyle(color: Colors.black,),),
              subtitle: Text("Busy",style: TextStyle(color: Colors.grey),),
            ),
            ListTile(
              leading: Icon(Icons.phone_outlined,color: Colors.grey,size: 30,),
              title: Text("Phone",style: TextStyle(color: Colors.black,),),
              subtitle: Text("+92 321 6087242",style: TextStyle(color: Colors.grey),),
            ),
            ListTile(
              leading: Icon(Icons.link,color: Colors.grey,size: 30,),
              title: Text("Links",style: TextStyle(color: Colors.black),),
              subtitle: Text("Add links",style: TextStyle(color: Colors.green),),
            )
            ],
        ),
    );
  }
}
