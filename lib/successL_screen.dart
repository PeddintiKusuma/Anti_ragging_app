import 'package:flutter/material.dart';

class SuccessLScreen extends StatelessWidget {
  const SuccessLScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: Color.fromRGBO(223, 146, 161, 227),
        margin: EdgeInsets.all(10),
        child:SingleChildScrollView(
        child: Column(
          children: [
            Image.asset("icon5.png",
            width: 400,
            height: 400,),
            SizedBox(
              height: 10,
            ),
            Text("You have login Successfully",style: TextStyle(fontSize: 40,fontWeight: FontWeight.w600,color: Colors.black),),
            SizedBox(
              height: 20,
            ),
            TextButton(onPressed: () {
               Navigator.restorablePopAndPushNamed(context, '/dashboardscreen');
            }, 
            child:Container(
              decoration: BoxDecoration(
                color: Color.fromARGB(173, 4, 2, 122),
                borderRadius: BorderRadius.circular(100),
              ),
              width: 280,
              height: 50,
              alignment: Alignment.center,
              child: Text("Next",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600,color: Colors.white),),
            ) )
          ],
        ),
        ),
      ) ,
    );
  }
}
