import 'package:flutter/material.dart';

class Resetpassword extends StatefulWidget {
  const Resetpassword({Key? key}) : super(key: key);

  @override
  _ResetpasswordState createState() => _ResetpasswordState();
}

class _ResetpasswordState extends State<Resetpassword> {
  TextEditingController _usernameController = TextEditingController();
  TextEditingController _currentpasswordController = TextEditingController();
  TextEditingController _newpasswordController = TextEditingController();
  TextEditingController _confirmPasswordController = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  void _update() {
    if (_formKey.currentState!.validate()) {
      // Registration logic here
      String username = _usernameController.text;

      // Add your registration logic here (e.g., send data to a backend)
      // For simplicity, let's assume a basic validation for this example.
      // You might want to use a more secure registration method in a real app.
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Password is successfully updated for $username'),
        ),
      );
      // Navigate to the login screen after successful registration
      Navigator.pushReplacementNamed(context, '/Settings');
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
   appBar: AppBar(title:
       Row(
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
           Text('Rest Your Password'),
         ],
       )),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                controller: _usernameController,
                decoration: InputDecoration(labelText: 'Username'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your  username';
                  }
                  return null;
                },
              ),
              SizedBox(height: 20),
              TextFormField(
                controller: _currentpasswordController,
                obscureText: true,
                decoration: InputDecoration(labelText: 'Current Password'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your current password';
                  }
                  return null;
                },
              ),
              SizedBox(height: 20),
              TextFormField(
                controller: _newpasswordController,
                obscureText: true,
                decoration: InputDecoration(labelText: ' new Password'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your new  password';
                  }
                  return null;
                },
              ),
              SizedBox(height: 20),
              TextFormField(
                controller: _confirmPasswordController,
                obscureText: true,
                decoration: InputDecoration(labelText: 'Confirm Password'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please confirm your new password';
                  } else if (value != _newpasswordController.text) {
                    return 'Passwords do not match';
                  }
                  return null;
                },
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed:  _update,
                child: Text('update'),
              ),
              SizedBox(height: 10),
               
            ],
          ),
        ),
      ),
    );
  }
}







 