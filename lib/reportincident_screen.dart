import 'package:app1/viewlist_screen.dart';
import 'package:flutter/material.dart';

class ReportIncidentScreen extends StatefulWidget {
  @override
  _ReportIncidentScreenState createState() => _ReportIncidentScreenState();
}

class _ReportIncidentScreenState extends State<ReportIncidentScreen> {
  TextEditingController _name = TextEditingController();
  TextEditingController _age = TextEditingController();
  TextEditingController _gender = TextEditingController();
  TextEditingController _todaysdate = TextEditingController();
  TextEditingController _incidentdate = TextEditingController();
  TextEditingController _phonenumber = TextEditingController();
  TextEditingController _emailaddress = TextEditingController();
  TextEditingController _profession = TextEditingController();

  TextEditingController _incidentDetailsController = TextEditingController();

  void _submitIncidentReport() {
    // Implement your logic to submit the incident report
    String incidentDetails = _incidentDetailsController.text;

    // Add your logic to send incident details to a backend or store locally
    // For simplicity, let's print the details in this example
    print('Incident Details: $incidentDetails');

    // Show a confirmation message
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('Incident reported successfully'),
      ),
    );

    // You might want to navigate to the dashboard or another screen after reporting
    Navigator.popAndPushNamed(
        context, '/dashboardscreen'); // Navigate back to the previous screen
  }

  // ignore_for_file: public_member_api_docs, sort_constructors_first
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Row(
        children: [
                      TextButton(
              onPressed: () {
                Navigator.restorablePopAndPushNamed(
                    context, '/dashboardscreen');
              },
              child: Text("back",),

            ),
            SizedBox(width: 20,),
          Text('Anti-Ragging App - Report Incident'),
        ],
      )),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: Color.fromRGBO(223, 146, 161, 227),
        margin: EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: _name,
                  decoration: InputDecoration(
                    
                      border: OutlineInputBorder(),
                      labelText: "Enter your name"),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: _age,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "Enter your age"),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: _gender,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "Enter your gender"),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: _todaysdate,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "Enter today's date"),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: _incidentdate,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "Enter a date when incident is happened "),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: _phonenumber,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "Enter your phone number"),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: _emailaddress,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "Enter your email address"),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: _profession,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText:
                          "Enter your profession like student/job/business/housewife etc..."),
                ),
              ),
              Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.camera),
                    tooltip: 'Camera',
                  ),
                  Text("Camera"),
                ],
              ),
              Padding(
                padding: EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Report Incident:',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 20),
                    TextField(
                      controller: _incidentDetailsController,
                      maxLines: 5,
                      decoration: InputDecoration(
                        labelText: 'Incident Details',
                        border: OutlineInputBorder(),
                      ),
                    ),
                    SizedBox(height: 20),
                    ElevatedButton(
                      onPressed: _submitIncidentReport,
                      child: Text('Submit Report'),
                    ),
                    // In InputScreen
                    SizedBox(height: 20),
                    ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => ViewlistScreen(
                                  Name: _name.text,
                                  Age: _age.text,
                                  Gender: _gender.text,
                                  TodaysDate: _todaysdate.text,
                                  IncidentDate: _incidentdate.text,
                                  PhoneNumber: _phonenumber.text,
                                  Emailadress: _emailaddress.text,
                                  Profession: _profession.text,
                                  ReportedIncident:
                                      _incidentDetailsController.text)));
                        },
                        child: Text("View Reported Incident")
                        )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ReportedIncident {}
