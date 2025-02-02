 import 'package:flutter/material.dart';
 class FeedbackScreen extends StatefulWidget {
   const FeedbackScreen({ Key? key }) : super(key: key);
 
   @override
   _FeedbackScreenState createState() => _FeedbackScreenState();
 }
 
 class _FeedbackScreenState extends State<FeedbackScreen> {
  TextEditingController _incidentDetailsController = TextEditingController();

  void _submitfeedbackreport() {
    // Implement your logic to submit the incident report
    String feedbackDetails = _incidentDetailsController.text;

    // Add your logic to send incident details to a backend or store locally
    // For simplicity, let's print the details in this example
    print('Give me your feedback: $feedbackDetails');

    // Show a confirmation message
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('Thank you for giving us this feedback'),
      ),
    );

    // You might want to navigate to the dashboard or another screen after reporting
    Navigator.popAndPushNamed(context, '/dashboardscreen'); // Navigate back to the previous screen
  }  
@override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Row(
        children: [
          TextButton(
              onPressed: () {
                Navigator.restorablePopAndPushNamed(
                    context, '/Settings');
              },
              child: Text("back",),

            ),
            SizedBox(
              width: 20,
            ),
          Text('Feedback'),
        ],
      )),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Give your opinion',
              
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            TextField(
              controller: _incidentDetailsController,
              maxLines: 5,
              decoration: InputDecoration(
                labelText: 'Feedback',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _submitfeedbackreport,
              child: Text('Submit'),
            ),
          ],
        ),
         ),
);
}
}
