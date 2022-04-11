import 'package:flutter/material.dart';

class ListStudent extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return ListStudentState();
  }
}

class ListStudentState extends State<ListStudent> {
  final List<String> entries = <String>['A', 'B', 'C', 'B', 'C', 'B', 'C', 'B', 'C', 'B', 'C'];
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      padding: EdgeInsets.fromLTRB(0, 2, 0, 0),
      child: ListView.builder(
          shrinkWrap: true,
          itemCount: entries.length,
          itemBuilder: (BuildContext context,int position){
            return Card(
              color: Colors.blue,
              elevation: 2.0,
              child: ListTile(
                leading: CircleAvatar(
                  backgroundColor:Colors.white ,
                  child: Text("A"),
                ),
                title: Text("Aloo"),
                subtitle: Text("Deneme"),
                onTap: (){
                  print("Seçildi");
                },
              ),
            );
          }),
    );
  }
}