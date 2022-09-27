import 'package:flutter/material.dart';

class ListViewScreen extends StatefulWidget {
  const ListViewScreen({Key? key}) : super(key: key);

  @override
  State<ListViewScreen> createState() => _ListViewScreenState();
}

class _ListViewScreenState extends State<ListViewScreen> {
  List<String> names=[
    "Noman",
    "Ashik",
    "Sakil",
    "Fatima Tuz Johra",
    "Noman",
    "Ashik",
    "Sakil",
    "Fatima Tuz Johra"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Listview Builder"),
        backgroundColor: Colors.orangeAccent,
        elevation: 0.0,
      ),
      body: ListView.builder(
          itemCount:names.length ,
          itemBuilder: (context,index){
            return CustomWidget(name: names[index],);
          })
    );
  }

 Widget customWidget(String name){
    return ListTile(
      leading: Icon(Icons.person),
      title: Text(name),
      trailing: Icon(Icons.arrow_forward_ios_sharp),
    );
  }


}

class CustomWidget extends StatelessWidget {
  String name;
   CustomWidget({required this.name});

  @override
  Widget build(BuildContext context) {
     return ListTile(
      leading: Icon(Icons.person),
      title: Text(name),
      trailing: Icon(Icons.arrow_forward_ios_sharp),
    );
  }
}
