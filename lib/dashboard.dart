import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Anti-Ragging App"),
          backgroundColor: Colors.blue,
          actions: <Widget>[
            IconButton(
              onPressed: () {
                Navigator.popAndPushNamed(context, '/comment_screen');
              },
              icon: const Icon(Icons.comment),
              tooltip: 'comments',
            ),
            IconButton(
              onPressed: () {
                Navigator.popAndPushNamed(context, '/Settings');
              },
              icon: const Icon(Icons.settings),
              tooltip: 'Settings',
            )
          ],
          systemOverlayStyle: SystemUiOverlayStyle.light,
        ),
        body: Container(
          decoration: BoxDecoration(
              border: Border.all(color: Colors.black),
              borderRadius: BorderRadius.circular(1)),
          margin: EdgeInsets.all(50),
          child: Row(
            children: [
              SizedBox(
                width: 200,
              ),
              Image.asset(
                "icon4.webp",
                width: 400,
                height: 400,
              ),
              SizedBox(
                width: 20,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  TextButton(
                      onPressed: () {
                        Navigator.popAndPushNamed(context, '/reportincident');
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(100),
                        ),
                        width: 280,
                        height: 50,
                        alignment: Alignment.center,
                        child: Text(
                          "Report Incident",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Colors.white),
                        ),
                      )),
                  SizedBox(
                    height: 20,
                  ),
                  TextButton(
                      onPressed: () {
                        //Navigator.popAndPushNamed(context, '/viewincident');
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(100),
                        ),
                        width: 280,
                        height: 50,
                        alignment: Alignment.center,
                        child: Text(
                          "View Incident",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Colors.white),
                        ),
                      ))
                ],
              ),
            ],
          ),
        ),
        drawer: Drawer(
          child: ListView(
            padding: const EdgeInsets.all(0),
            children: [
              const DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.blue,
                ), //BoxDecoration
                child: UserAccountsDrawerHeader(
                  decoration: BoxDecoration(color: Colors.blue),
                  accountName: Text(
                    "Peddinti Kusuma",
                    style: TextStyle(fontSize: 18),
                  ),
                  accountEmail: Text("peddintikusuma@gmail.com"),
                  currentAccountPictureSize: Size.square(50),
                  currentAccountPicture: CircleAvatar(
                    backgroundColor: Color.fromARGB(255, 14, 6, 159),
                    child: Text(
                      "PK",
                      style: TextStyle(fontSize: 30.0, color: Colors.blue),
                    ), //Text
                  ), //circleAvatar
                ), //UserAccountDrawerHeader
              ), //DrawerHeader
              ListTile(
                leading: const Icon(Icons.person),
                title: const Text(' My Profile '),
                onTap: () {
                  //Navigator.popAndPushNamed(context, '/);
                },
              ),
              ListTile(
                leading: const Icon(Icons.video_label),
                title: const Text(' Saved Videos '),
                onTap: () {
                  //Navigator.popAndPushNamed(context, '/);
                },
              ),
              ListTile(
                leading: const Icon(Icons.edit),
                title: const Text(' Edit Profile '),
                onTap: () {
                 //Navigator.popAndPushNamed(context, '/);
                },
              ),
              ListTile(
                leading: const Icon(Icons.settings),
                title: const Text(' Settings '),
                onTap: () {
                  Navigator.popAndPushNamed(context, '/Settings');
                },
              ),
              ListTile(
                leading: const Icon(Icons.logout),
                title: const Text('LogOut'),
                onTap: () {
                  Navigator.popAndPushNamed(context, '/SplashScreen');
                },
              ),
            ],
          ),
        ), //Drawer
      ),
    );
  }
}
