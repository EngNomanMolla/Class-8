import 'package:flutter/material.dart';
class AspectRatioScreen extends StatefulWidget {
  const AspectRatioScreen({Key? key}) : super(key: key);

  @override
  State<AspectRatioScreen> createState() => _AspectRatioScreenState();
}

class _AspectRatioScreenState extends State<AspectRatioScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Orientation Builder"),
        backgroundColor: Colors.orangeAccent,
        elevation: 0.0,
      ),
      body: Container(
        child: AspectRatio(
          aspectRatio: 6/6,
          child: Container(
            color: Colors.purple,
            child: Center(child: Text("I am screen"),),
          ),
        ),
      ),
    );
  }
}
