import 'package:flutter/material.dart';

class Letsgetstarted extends StatefulWidget {
  const Letsgetstarted({Key? key}) : super(key: key);

  @override
  _LetsgetstartedState createState() => _LetsgetstartedState();
}

class _LetsgetstartedState extends State<Letsgetstarted> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Anti-Ragging App")),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: Color.fromRGBO(223, 146, 161, 227),
        margin: EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset(
                "icon.jpg",
                width: 300,
                height: 300,
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                "   Let's get started",
                style: TextStyle(fontSize: 60, fontWeight: FontWeight.w900),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                "National Anti-Ragging Programme monitoring Agency, Centre for Youth(C4Y)",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.w400),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                "24*7 Toll Free Number",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.w400),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                "1800-180-5522",
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w500,
                    color: Colors.red),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                "helpline@antiragging.in",
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w400,
                    color: Colors.red),
              ),
              SizedBox(
                height: 10,
              ),
              TextButton(
                onPressed: () {
                  Navigator.restorablePopAndPushNamed(context, '/SplashScreen');
                }, 
                
                child:Container(
                  decoration: BoxDecoration(
                    color: Color.fromARGB(173, 4, 2, 122),
                    borderRadius: BorderRadius.circular(100)
                  ),
                  width: 280,
                  height: 50,
                  alignment: Alignment.center,
                child: Text("Start",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600,color: Colors.white),),
              ),)
            ],
          ),
        ),
      ),
    );
  }
}
