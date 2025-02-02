import 'package:flutter/material.dart';

class About extends StatelessWidget {
  const About({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextButton(
          onPressed: () {
            Navigator.restorablePopAndPushNamed(context, '/Settings');
          },
          child: Text("back"),
        ),
      ),
      body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          color: Color.fromRGBO(223, 146, 161, 227),
          margin: EdgeInsets.all(10),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Column(
                  children: [
                    Text(
                      "About:",
                      style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.w800,
                          color: Colors.black),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    
                    Row(
                      
                      children: [
                        SizedBox(width: 300,),
                        Image.asset(
                          "icon1.jpg",
                          width: 400,
                          height: 400,
                        ),
                        SizedBox(width: 50,),
                        Column(
                          children: [
                            Text("HELPLINE NUMBER:",style: TextStyle(fontSize: 30,fontWeight: FontWeight.w600,color: Colors.red),),
                            SizedBox(
                      height: 5,
                    ),
                            Text("1800-180-5522",style: TextStyle(fontSize: 30,fontWeight: FontWeight.w600,color: Colors.pink),),
                            SizedBox(
                      height: 5,
                    ),
                            Text("helpline@antiragging.in",style: TextStyle(fontSize: 30,fontWeight: FontWeight.w600,color: Colors.pink),)
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      "Anti-Ragging",
                      style: TextStyle(
                          fontSize: 35,
                          fontWeight: FontWeight.w700,
                          color: Colors.red),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    const Text(
                      "Ragging is a disturbing reality in the higher education system of our country.Despite the fact that over the years ragging has claimed hundreds of innocent lives and has ruined careers of thousands of bright students,the practice is still perceived by many as a way of ‘familiarization’ and an ‘initiation into the real world’ for young college-going students.",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: Colors.black),
                    ),
                    Text(
                      "Other organisations/bodies working in this field have also attempted to define ragging, the variety of definitions being reflective of differences in perspective.",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: Colors.black),
                    ),
                    Image.asset(
                      "icon3.jpg",
                      width: 400,
                      height: 400,
                    ),
                    Text(
                      "NATIONAL RAGGING PREVENTION PROGRAM OF THE UNION GOVERNMENT AND UNIVERSITY GRANTS COMMISSION.",
                      style: TextStyle(
                          fontSize: 35,
                          fontWeight: FontWeight.w700,
                          color: Colors.red),
                    ),
                    Text(
                      "In May 2009 the Hon.Supreme Court of India ordered implementation of what is now known as the National ragging prevention Program.This program was designed by the Aman Movement& is now being implemented by Aman from January 2012."
                      "Besides its success in eradication of Ragging it is an example of successful partnership between government & non government agencies & use of Technology in management 7 monitoring of social sector programs.",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: Colors.black),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.restorablePopAndPushNamed(
                            context, '/Settings');
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            color: Color.fromARGB(173, 4, 2, 122),
                            borderRadius: BorderRadius.circular(100)),
                        width: 280,
                        height: 50,
                        alignment: Alignment.center,
                        child: Text(
                          "Thankyou",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Colors.white),
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          )),
    );
  }
}
/*TextButton(
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
                child: Text("Continue",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600,color: Colors.white),),
              ),)*/