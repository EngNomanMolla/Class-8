import 'package:flutter/material.dart';

class DraggableScreen extends StatefulWidget {
  const DraggableScreen({Key? key}) : super(key: key);

  @override
  State<DraggableScreen> createState() => _DraggableScreenState();
}

class _DraggableScreenState extends State<DraggableScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Orientation Builder"),
        backgroundColor: Colors.orangeAccent,
        elevation: 0.0,
      ),
      body: Draggable(
        feedback: Container(
          height: 200.0,
          width: 200.0,
          child: Image.network(
              "https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg"),
        ),
        childWhenDragging: Container(),
        child: Container(
          height: 200.0,
          width: 200.0,
          child: Image.network(
              "https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg"),
        ),
      ),
    );
  }
}
