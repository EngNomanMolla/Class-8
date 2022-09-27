import 'package:flutter/material.dart';
class LayoutBuilderScreen extends StatefulWidget {
  const LayoutBuilderScreen({Key? key}) : super(key: key);

  @override
  State<LayoutBuilderScreen> createState() => _LayoutBuilderScreenState();
}

class _LayoutBuilderScreenState extends State<LayoutBuilderScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Layout Builder"),backgroundColor: Colors.orangeAccent,elevation: 0.0,),
      body: LayoutBuilder(builder: (context,constraints){
        print(constraints.maxWidth);
        if(constraints.maxWidth<600){
          return MobileBody();
        }
        if(constraints.maxWidth<1000){
          return TabBody();
        }
        return DesktopBody();
      }),
    );
  }

  Widget MobileBody() {
    return Container(
      width: MediaQuery.of(context).size.width,
      color: Colors.orangeAccent,
      child: Center(child: Text("This is mobile body")),
    );

  }

  Widget TabBody() {
    return Container(
      width: MediaQuery.of(context).size.width,
      color: Colors.green,
      child: Center(child: Text("This is tab body")),
    );
  }

  Widget DesktopBody() {
    return Container(
      width: MediaQuery.of(context).size.width,
      color: Colors.purple,
      child: Center(child: Text("This is desktop body")),
    );
  }
}
