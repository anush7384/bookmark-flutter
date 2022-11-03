import 'package:bookmark/screens/dashboard/widgets/dashboard_body.dart';
import 'package:flutter/material.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {

  final GlobalKey<ScaffoldState> _scaffoldKEy = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      key:_scaffoldKEy,
      drawer: SafeArea(
        child: Drawer(
          child:ListView(
            children: [
              const DrawerHeader(child: Text('Header')),
              const ListTile(title: Text('a'),),
              const ListTile(title:Text('b')),
              Container(
                height:50.0,
                color:Colors.amber,
                child:const Text('a'),
              ),
            ],
          )
        ),
      ),
      resizeToAvoidBottomInset: false,
      body: 
      SafeArea(
        child:
         Stack(
          children:[ 
            const DashboardBody(),
            IconButton(onPressed: (){
              _scaffoldKEy.currentState?.openDrawer();
            },
            padding: const EdgeInsets.only(top:15.0,left:10.0),
             icon: const Icon(Icons.menu,size: 40.0,)),
            ]),
      ),
    );
  }
}
