import 'package:flutter/material.dart';
class FittedBoxScreen extends StatefulWidget {
  const FittedBoxScreen({Key? key}) : super(key: key);

  @override
  State<FittedBoxScreen> createState() => _FittedBoxScreenState();
}

class _FittedBoxScreenState extends State<FittedBoxScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Orientation Builder"),
        backgroundColor: Colors.orangeAccent,
        elevation: 0.0,
      ),
      body: Container(
        color: Colors.purple,
        height: 200.0,
        width: 250.0,
        child: Image.network("https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg",
        fit: BoxFit.cover,
        ),
      ),
    );
  }
}
