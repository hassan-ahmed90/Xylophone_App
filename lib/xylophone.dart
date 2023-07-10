import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
class Xylophone extends StatelessWidget {

  void playPiano(int num){
    final player =AudioPlayer();
    player.play(AssetSource("note$num.wav"));

  }
  const Xylophone({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Button(color: Colors.red, onpreSS: (){
                playPiano(1);
              }),
            ),
            Expanded(
              child: Button(color: Colors.green, onpreSS: (){
                playPiano(2);
              }),
            ),

            Expanded(
              child: Button(color: Colors.yellow, onpreSS: (){
                playPiano(3);
              }),
            ),

            Expanded(
              child: Button(color: Colors.purple, onpreSS: (){
                playPiano(4);
              }),
            ),

            Expanded(
              child: Button(color: Colors.blue, onpreSS: (){
                playPiano(5);
              }),
            ),

            Expanded(
              child: Button(color: Colors.orange, onpreSS: (){
                playPiano(6);
              }),
            ),

            Expanded(
              child: Button(color: Colors.cyanAccent, onpreSS: (){
                playPiano(7);
              }),
            ),

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
        height: 100,
        width: double.infinity,
        decoration: BoxDecoration(
          color: color,
        ),

      ),
    );
  }
}
