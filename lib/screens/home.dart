import 'package:flutter/material.dart';
import 'package:student_follow_app/widgets/listSetting.dart';
import 'package:student_follow_app/widgets/listStudent.dart';

class Home extends StatefulWidget{
  Home({required this.logoutCallBack});

  final VoidCallback logoutCallBack;
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return HomeState();
  }
}

class HomeState extends State<Home> with SingleTickerProviderStateMixin {
  static const List<Tab> myTabs=<Tab>[
    Tab(icon:Icon(Icons.home)),
    Tab(icon:Icon(Icons.settings))
  ];
  late TabController _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController=new TabController(length: myTabs.length,initialIndex: 0, vsync:this);
  }

@override
void dispose(){
    _tabController.dispose();
    super.dispose();
}

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Admin",style:TextStyle(fontSize: 20.0,fontWeight: FontWeight.normal)),
        bottom: TabBar(
          controller: _tabController,
          indicatorColor: Colors.white,
          tabs: myTabs,
        ),
        actions: [
          TextButton(
            style: TextButton.styleFrom(
              textStyle: const TextStyle(fontSize: 20,fontWeight: FontWeight.normal),
              primary: Colors.white
            ),
              onPressed: (){
               widget.logoutCallBack();
                print("Çıkış");
              },
              child: Text("Çıkış")),
        ],
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          ListStudent(),
          ListSetting()
        ],
      ),
    );
  }
}