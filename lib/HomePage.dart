import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Animated Text"),
        backgroundColor: Colors.green[700],
        centerTitle: true,
        brightness: Brightness.dark,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            colorizeAnimation(),
            rotateAnimation(),
            scaleAnimation(),
            fadeAnimation(),
            typeAnimation(),
          ],
        ),
      ),
    );
  }

  Widget colorizeAnimation() {
    const colorizeColors = [
      Colors.purple,
      Colors.blue,
      Colors.yellow,
      Colors.red,
    ];

    const colorizeTextStyle = TextStyle(
      fontSize: 30.0,
    );
    return Container(
      color: Colors.teal,
      height: 150,
      width: double.infinity,
      child: Center(
        child: AnimatedTextKit(
          animatedTexts: [
            ColorizeAnimatedText(
              'Larry Page',
              textStyle: colorizeTextStyle,
              colors: colorizeColors,
            ),
            ColorizeAnimatedText(
              'Bill Gates',
              textStyle: colorizeTextStyle,
              colors: colorizeColors,
            ),
            ColorizeAnimatedText(
              'Steve Jobs',
              textStyle: colorizeTextStyle,
              colors: colorizeColors,
            ),
          ],
          repeatForever: true,
        ),
      ),
    );
  }

  Widget rotateAnimation() {
    const textStyle = TextStyle(
      fontSize: 30.0,
      color: Colors.white,
    );
    return Container(
      height: 150,
      color: Colors.orange,
      child: Center(
        child: AnimatedTextKit(
          animatedTexts: [
            RotateAnimatedText(
              'AWESOME',
              textStyle: textStyle,
            ),
            RotateAnimatedText(
              'OPTIMISTIC',
              textStyle: textStyle,
            ),
            RotateAnimatedText(
              'DIFFERENT',
              textStyle: textStyle,
            ),
          ],
          repeatForever: true,
        ),
      ),
    );
  }

  Widget scaleAnimation() {
    return Container(
      height: 150,
      color: Colors.blue,
      child: Center(
        child: DefaultTextStyle(
          style: const TextStyle(
            fontSize: 40.0,
          ),
          child: AnimatedTextKit(
            animatedTexts: [
              ScaleAnimatedText('Think'),
              ScaleAnimatedText('Build'),
              ScaleAnimatedText('Ship'),
            ],
            repeatForever: true,
          ),
        ),
      ),
    );
  }

  Widget fadeAnimation() {
    return Container(
      color: Colors.brown,
      height: 150,
      child: Center(
        child: DefaultTextStyle(
          style: const TextStyle(
            fontSize: 32.0,
            fontWeight: FontWeight.bold,
          ),
          child: AnimatedTextKit(
            animatedTexts: [
              FadeAnimatedText('do IT!'),
              FadeAnimatedText('do it RIGHT!!'),
              FadeAnimatedText('do it RIGHT NOW!!!'),
            ],
            repeatForever: true,
          ),
        ),
      ),
    );
  }

  Widget typeAnimation() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      color: Colors.blueGrey,
      height: 150.0,
      child: Center(
        child: DefaultTextStyle(
          style: const TextStyle(
            fontSize: 20.0,
          ),
          child: AnimatedTextKit(
            animatedTexts: [
              TyperAnimatedText('It is not enough to do your best,'),
              TyperAnimatedText('you must know what to do,'),
              TyperAnimatedText('and then do your best'),
              TyperAnimatedText('- W.Edwards Deming'),
            ],
            repeatForever: true,
          ),
        ),
      ),
    );
  }
}
