  import 'package:flutter/material.dart';
 class Signupscreen extends StatefulWidget {
   const Signupscreen({ Key? key }) : super(key: key);
 
   @override
   _SignupState createState() => _SignupState();
 }
 
 class _SignupState extends State<Signupscreen> {
   TextEditingController _usernameController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _confirmPasswordController = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  void _signin() {
    if (_formKey.currentState!.validate()) {
      // Registration logic here
      String username = _usernameController.text;

      // Add your registration logic here (e.g., send data to a backend)
      // For simplicity, let's assume a basic validation for this example.
      // You might want to use a more secure registration method in a real app.
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Account is successfully created for $username'),
        ),
      );
      // Navigate to the login screen after successful registration
      Navigator.pushReplacementNamed(context, '/dashboardscreen');
    }
  }
 @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:
       Text('Anti-Ragging App-Sign up')),
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
                    return 'Please enter a username';
                  }
                  return null;
                },
              ),
              SizedBox(height: 20),
              TextFormField(
                controller: _passwordController,
                obscureText: true,
                decoration: InputDecoration(labelText: 'Password'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter a password';
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
                    return 'Please confirm your password';
                  } else if (value != _passwordController.text) {
                    return 'Passwords do not match';
                  }
                  return null;
                },
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed:  _signin,
                child: Text('Sign in'),
              ),
              SizedBox(height: 10),
              TextButton(
                onPressed: () {
                  // Navigate to the login screen
                  Navigator.pushReplacementNamed(context, '/loginpage');
                },
                child: Text('Already have an account? Login here.'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

