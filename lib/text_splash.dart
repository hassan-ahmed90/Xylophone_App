import 'dart:async';

import 'package:flutter/material.dart';
import 'package:xylophones_new/main.dart';
class TextScreen extends StatefulWidget {
  const TextScreen({Key? key}) : super(key: key);

  @override
  State<TextScreen> createState() => _TextScreenState();
}

class _TextScreenState extends State<TextScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 5), () {
      Navigator.push(context, MaterialPageRoute(builder: (context)=>MyApp()));
    });

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyanAccent,
      body: Center(child: Text("Play Piano",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 35,color: Colors.black),),),
    );
  }
}
