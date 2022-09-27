import 'package:flutter/material.dart';

class OrientationBuilderScreen extends StatefulWidget {
  const OrientationBuilderScreen({Key? key}) : super(key: key);

  @override
  State<OrientationBuilderScreen> createState() =>
      _OrientationBuilderScreenState();
}

class _OrientationBuilderScreenState extends State<OrientationBuilderScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Orientation Builder"),
        backgroundColor: Colors.orangeAccent,
        elevation: 0.0,
      ),
      body: OrientationBuilder(
        builder: (context, orientation) {
          if (orientation == Orientation.portrait) {
            return PortateBody();
          }
          return Landscape();
        },
      ),
    );
  }

  Widget PortateBody() {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      color: Colors.purple,
      child: Center(child: Text("This is protate view")),
    );
  }

  Widget Landscape() {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      color: Colors.yellow,
      child: Center(child: Text("This is landscape view")),
    );
  }
}
