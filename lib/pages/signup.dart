// ignore_for_file: prefer_const_constructors, curly_braces_in_flow_control_structures, no_leading_underscores_for_local_identifiers

import 'package:flutter/material.dart';

class Signup extends StatelessWidget {
  const Signup({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController _emailController = TextEditingController();
    final TextEditingController _passwordController = TextEditingController();
    final TextEditingController _lastnameController = TextEditingController();
    final TextEditingController _firstnameController = TextEditingController();
    final TextEditingController _cpasswordController = TextEditingController();
    return Scaffold(
      backgroundColor: Colors.white, // White background
      appBar: AppBar(
        title: Text("Signup"),
        backgroundColor: Color(0xFFFB8C00), // Dark Orange AppBar
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Email TextField
              TextFormField(
                controller: _emailController,
                decoration: InputDecoration(
                  labelText: 'Enter your email',
                  labelStyle:
                      TextStyle(color: Color(0xFFFB8C00)), // Dark Orange label
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: Color(0xFFFB8C00)), // Dark Orange border
                  ),
                ),
              ),
              SizedBox(height: 20),
              TextFormField(
                controller: _firstnameController,
                decoration: InputDecoration(
                  labelText: 'Enter your first name',
                  labelStyle:
                      TextStyle(color: Color(0xFFFB8C00)), // Dark Orange label
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: Color(0xFFFB8C00)), // Dark Orange border
                  ),
                ),
              ),
              SizedBox(height: 20),
              TextFormField(
                controller: _lastnameController,
                decoration: InputDecoration(
                  labelText: 'Enter your last name',
                  labelStyle:
                      TextStyle(color: Color(0xFFFB8C00)), // Dark Orange label
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: Color(0xFFFB8C00)), // Dark Orange border
                  ),
                ),
              ),
              SizedBox(height: 20),
              // Password TextField
              TextFormField(
                controller: _passwordController,
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Enter your password',
                  labelStyle: TextStyle(
                      color: Color.fromARGB(
                          255, 175, 106, 20)), // Dark Orange label
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: Color(0xFFFB8C00)), // Dark Orange border
                  ),
                ),
              ),
              SizedBox(height: 20),
              TextFormField(
                controller: _cpasswordController,
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'conform your password',
                  labelStyle: TextStyle(
                      color: Color.fromARGB(
                          255, 175, 106, 20)), // Dark Orange label
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: Color(0xFFFB8C00)), // Dark Orange border
                  ),
                ),
              ),

              // Sign up Button
              ElevatedButton(
                onPressed: () {
                  if (_passwordController.text == _cpasswordController.text) {
                    print("Email: ${_emailController.text}");
                    print("firstname: ${_firstnameController.text}");
                    print("astname: ${_lastnameController.text}");
                    print("Password: ${_passwordController.text}");
                    print("cPassword: ${_cpasswordController.text}");
                  } else
                    print(" password didnot match");
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromARGB(
                      255, 33, 83, 189), // Dark Orange button color
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                child: Text("Sign up", style: TextStyle(color: Colors.white)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
