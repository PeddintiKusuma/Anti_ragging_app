import 'package:flutter/material.dart';


class ViewlistScreen extends StatelessWidget {
  final String Name, Age, Gender,TodaysDate, IncidentDate,PhoneNumber, Emailadress, Profession,ReportedIncident;
  const ViewlistScreen({Key? key, required this.Name,required this.Age,required this.Gender,required this.TodaysDate, required this.IncidentDate,required this.PhoneNumber,required this.Emailadress,
  required this.Profession,required this.ReportedIncident,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
         title:TextButton(
              onPressed: () {
                Navigator.restorablePopAndPushNamed(
                    context, '/dashboardscreen');
              },
              child: Text("back",),

            ),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        margin: EdgeInsets.all(20),
        
        decoration: BoxDecoration(border: Border.all(color: Colors.black,width: 3)),
        child: Column(
          children: [
            Text('Name:${Name}',style: TextStyle(fontSize: 30,fontWeight: FontWeight.w600,color: Colors.black),),
            Text('Age:${Age}',style: TextStyle(fontSize: 30,fontWeight: FontWeight.w600,color:Colors.black),),
            Text('Gender:${Gender}',style: TextStyle(fontSize: 30,fontWeight: FontWeight.w600,color:Colors.black),),
            Text('TodaysDate:${TodaysDate}',style: TextStyle(fontSize: 30,fontWeight: FontWeight.w600,color: Colors.black,),),
            Text('IncidentDate:${IncidentDate}',style: TextStyle(fontSize: 30,fontWeight: FontWeight.w600,color: Colors.black),),
             Text('PhoneNumber:${PhoneNumber}',style: TextStyle(fontSize: 30,fontWeight: FontWeight.w600,color: Colors.black),),
            Text('Emailaddress:${Emailadress}',style: TextStyle(fontSize: 30,fontWeight: FontWeight.w600,color: Colors.black),),
            Text('Profession:${Profession}',style: TextStyle(fontSize: 30,fontWeight: FontWeight.w600,color: Colors.black),),
            Text('ReportedIncident:${ReportedIncident}',style: TextStyle(fontSize: 30,fontWeight: FontWeight.w600,color: Colors.black),),     
                 
         ],
        ),
      )
    );
  }
}
