import 'package:flutter/material.dart';

class Settings extends StatefulWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:
         Row(
           children: [
                        TextButton(
              onPressed: () {
                Navigator.restorablePopAndPushNamed(
                    context, '/dashboardscreen');
              },
              child: Text("back",style: TextStyle(color: Colors.black),),

            ),
            SizedBox(width: 20,),

             const Text("Settings"),
           ],
         ),
        titleSpacing: 00.0,
        centerTitle: true,
        toolbarHeight: 60.2,
        toolbarOpacity: 0.8,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(25),
              bottomLeft: Radius.circular(25)),
        ),
        elevation: 0.00,
        backgroundColor: Colors.blueAccent[400],      
      ), //AppBar
      body: Container(
        child: Column(
          /*mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,*/
          children: [
            SizedBox(
              height: 20,
            ),
            TextButton(
              onPressed: () {},
              child: Container(
                  decoration: BoxDecoration(
                      color: Colors.blueAccent,
                      borderRadius: BorderRadius.circular(100)),
                  width: 280,
                  height: 50,
                  alignment: Alignment.center,
                  child: Text(
                    "Notification",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Colors.white),
                  )),
            ),
            SizedBox(
              height: 10,
            ),
            TextButton(
              onPressed: () {},
              child: Container(
                  decoration: BoxDecoration(
                      color: Colors.blueAccent,
                      borderRadius: BorderRadius.circular(100)),
                  width: 280,
                  height: 50,
                  alignment: Alignment.center,
                  child: Text(
                    "Theme",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Colors.white),
                  )),
            ),
            SizedBox(
              height: 10,
            ),
            TextButton(
              onPressed: () {
                Navigator.popAndPushNamed(context, '/resetpassword');
              },
              child: Container(
                  decoration: BoxDecoration(
                      color: Colors.blueAccent,
                      borderRadius: BorderRadius.circular(100)),
                  width: 280,
                  height: 50,
                  alignment: Alignment.center,
                  child: Text(
                    "Rest Password",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Colors.white),
                  )),
            ),
            SizedBox(
              height: 10,
            ),
            TextButton(
              onPressed: () {
                Navigator.popAndPushNamed(context, '/About');
              },
              child: Container(
                  decoration: BoxDecoration(
                      color: Colors.blueAccent,
                      borderRadius: BorderRadius.circular(100)),
                  width: 280,
                  height: 50,
                  alignment: Alignment.center,
                  child: Text(
                    "About",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Colors.white),
                  )),
            ),
            SizedBox(
              height: 10,
            ),
            TextButton(
              onPressed: () {
                Navigator.popAndPushNamed(context, '/feedback');
              },
              child: Container(
                  decoration: BoxDecoration(
                      color: Colors.blueAccent,
                      borderRadius: BorderRadius.circular(100)),
                  width: 280,
                  height: 50,
                  alignment: Alignment.center,
                  child: Text(
                    "Feedback",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Colors.white),
                  )),
            ),
            SizedBox(
              height: 10,
            ),
            TextButton(
              onPressed: () {
                Navigator.popAndPushNamed(context, '/SplashScreen');
              },
              child: Container(
                  decoration: BoxDecoration(
                      color: Colors.blueAccent,
                      borderRadius: BorderRadius.circular(100)),
                  width: 280,
                  height: 50,
                  alignment: Alignment.center,
                  child: Text(
                    "Logout",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Colors.white),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
