import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextButton(
          onPressed: () {
            Navigator.restorablePopAndPushNamed(
                context, '/letsgetstartedscreen');
          },
          child: Text("back"),
        ),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Color.fromRGBO(223, 146, 161, 227),
        child:SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 20,
            ),
            Container(
                padding: const EdgeInsets.only(
                    top: 40, left: 20, right: 20, bottom: 40),
                color: Color(0xFF050C5A),
                child: Image.asset(
                  "logo2.jpg",
                  width: 200,
                  height: 200,
                )),
            const SizedBox(
              height: 30,
            ),
            const Padding(
              padding: EdgeInsets.only(right: 80, left: 80),
              child: Text(
                "ANTI-RAGGING APP",
                style: TextStyle(fontSize: 32, fontWeight: FontWeight.w600),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "say no to ragging,we are with you",
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                  color: Colors.black),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 40,
            ),
            TextButton(
              onPressed: () {
                Navigator.pushNamed(context, '/loginpage');
              },
              child: Container(
                  decoration: BoxDecoration(
                      color: Color.fromARGB(228, 4, 4, 75),
                      borderRadius: BorderRadius.circular(5)),
                  width: 450,
                  height: 50,
                  alignment: Alignment.center,
                  child: const Text(
                    "Login",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Colors.white),
                  )),
            ),
            const SizedBox(
              height: 20,
            ),
            TextButton(
              onPressed: () {
                Navigator.pushNamed(context, '/Signupscreen');
              },
              child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(color: Colors.black)),
                  width: 450,
                  height: 50,
                  alignment: Alignment.center,
                  child: const Text(
                    "Sign up",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Colors.black),
                  )),
            ),
          ],
        ),),
      ),
    );
  }
}
