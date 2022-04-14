import 'package:flutter/material.dart';
import 'package:student_follow_app/models/student.dart';
import 'package:student_follow_app/services/studentController.dart';

class ListStudent extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return ListStudentState();
  }
}

class ListStudentState extends State<ListStudent> {

  late Future<List<Student>> students;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    students=StudentController().getFilterEssential();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      padding: EdgeInsets.fromLTRB(0, 2, 0, 0),
      child:FutureBuilder<List<Student>>(
        future: students,
        builder: (context,snapshot){
          if(snapshot.hasData){
            print(snapshot.data!.length);
            return   ListView.builder(
                shrinkWrap: true,
                itemCount: snapshot.data!.length,
                itemBuilder: (BuildContext context,int position){
                  return Card(
                    color: Colors.blue,
                    elevation: 2.0,
                    child: ListTile(
                      leading: CircleAvatar(
                        backgroundColor:Colors.white ,
                        child: Text("A"),
                      ),
                      title: Text(snapshot.data![position].nameAndSurname),
                      subtitle: Text(snapshot.data![position].classroom + " - " +
                                      snapshot.data![position].number + " - " +
                                      snapshot.data![position].phone
                      ),
                      onTap: (){
                        print("Seçildi");
                      },
                    ),
                  );
                });
          }
          else{
            return Text("Veri Gelmedi");
          }
        },
      ),



    );
  }
}