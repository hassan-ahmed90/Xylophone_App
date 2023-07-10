import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
class Xylophone extends StatelessWidget {
  const Xylophone({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Button(color: Colors.red, onpreSS: (){

                final player =AudioPlayer();
                player.play(AssetSource("note1.wav"));

            }),
            Button(color: Colors.green, onpreSS: (){

                final player =AudioPlayer();
                player.play(AssetSource("note2.wav"));


            }),
            Button(color: Colors.yellow, onpreSS: (){

                final player =AudioPlayer();
                player.play(AssetSource("note4.wav"));


            }),
            Button(color: Colors.purple, onpreSS: (){}),
            Button(color: Colors.blue, onpreSS: (){}),
            Button(color: Colors.black12, onpreSS: (){}),
            Button(color: Colors.cyanAccent, onpreSS: (){}),
          ],
        ),
      ),
    );
  }
}

class Button extends StatelessWidget {
  const Button({Key? key,required this.color,required this.onpreSS}) : super(key: key);
  final VoidCallback onpreSS;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap:onpreSS,
      child: Container(
        height: 50,
        width: double.infinity,
        decoration: BoxDecoration(
          color: color,
        ),

      ),
    );
  }
}
