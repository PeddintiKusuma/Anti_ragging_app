import 'package:flutter/material.dart';

class Forgetpassword extends StatefulWidget {
  const Forgetpassword({Key? key}) : super(key: key);

  @override
  _ForgetpasswordState createState() => _ForgetpasswordState();
}

class _ForgetpasswordState extends State<Forgetpassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextButton(
            onPressed: () {
              Navigator.popAndPushNamed(context, '/loginpage');
            },
            child: Text("previous")),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: Color.fromRGBO(223, 146, 161, 227),
        margin: EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset(
                "icon6.jpg",
                width: 400,
                height: 400,
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "FORGOT PASSWORD",
                style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.w800,
                    color: Colors.pink),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Enter your phone number below we will send you an SMS with a pin code to confim your identity",
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w600,
                    color: Colors.black),
              ),
              TextFormField(
                decoration: InputDecoration(
                    hintText: " Enter your phone number",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                    )),
              ),
              SizedBox(
                height: 10,
              ),
              TextButton(
                onPressed: () {
                  Navigator.popAndPushNamed(context, "/fp2");
                },
                child: Container(
                    decoration: BoxDecoration(
                      color: Color.fromARGB(173, 4, 2, 122),
                      borderRadius: BorderRadius.circular(100),
                    ),
                    width: 280,
                    height: 50,
                    alignment: Alignment.center,
                    child: Text(
                      "Send SMS",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Colors.white),
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
