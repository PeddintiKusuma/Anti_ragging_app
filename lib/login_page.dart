import 'package:flutter/material.dart';

class Loginpage extends StatefulWidget {
  const Loginpage({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<Loginpage> {
  bool isVisiblityoff = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: TextButton(
            onPressed: () {
              Navigator.restorablePopAndPushNamed(context, "/SplashScreen");
            },
            child: Text("Back"),
          ),
        ),
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          color: Color.fromRGBO(223, 146, 161, 227),
          margin: EdgeInsets.all(10),
          child: SingleChildScrollView(
            child: Column(children: [
              // Profile Image
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.only(
                        top: 20, left: 10, right: 10, bottom: 20),
                    color: Color(0xFF050C5A),
                    child: Image.asset(
                      "logo2.jpg",
                      width: 100,
                      height: 100,
                    ),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  //Welcome Back text
                  Text(
                    "Welcome back",
                    style: TextStyle(fontSize: 32, fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  //Paragraph tex
                  Text(
                    "Welcome back. Enter your credentials to access your account",
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Color.fromRGBO(3, 26, 96, 1)),
                  ),
                  const SizedBox(height: 24),
                  //email input
                  const Text(
                    "Email Address",
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Colors.black),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: "hello@gmail.com",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  //password input
                  Text("Password",
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Colors.black)),
                  SizedBox(
                    height: 8,
                  ),
                  TextFormField(
                    obscureText: isVisiblityoff,
                    decoration: InputDecoration(
                      hintText: "password",
                      
                      suffixIcon: InkWell(
                          onTap: () {
                            if (isVisiblityoff == true) {
                              setState(() {
                                isVisiblityoff = false;
                              });
                            } else {
                              setState(() {
                                isVisiblityoff = true;
                              });
                            }
                          },
                          child: isVisiblityoff == true
                              ? Icon(Icons.visibility_off)
                              : Icon(Icons.visibility)),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/forgetpassword');
                      },
                      child: Text("Forgot Password?")),
                ],
              ),
              SizedBox(
                height: 39,
              ),
              TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/successL_screen');
                },
                child: Container(
                    decoration: BoxDecoration(
                        color: Color.fromARGB(173, 4, 2, 122),
                        borderRadius: BorderRadius.circular(100)),
                    width: 280,
                    height: 50,
                    alignment: Alignment.center,
                    child: Text(
                      "Login",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Colors.white),
                    )),
              ),
              const SizedBox(height: 24),
              //create an account
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("New Here?"),
                  TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/Signupscreen'
                      
                      
                      
                      
                      );
                    },
                    child: Text("create an account"),
                  )
                ],
              )
            ]),
          ),
        ));
  }
}
