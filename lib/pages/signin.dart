// ignore_for_file: prefer_const_constructors, curly_braces_in_flow_control_structures, no_leading_underscores_for_local_identifiers

import 'package:flutter/material.dart';
import 'package:tutorial_mobile_app/pages/signin.dart';

class Signin extends StatelessWidget {
  const Signin({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController _emailController = TextEditingController();
    final TextEditingController _passwordController = TextEditingController();

    return Scaffold(
      backgroundColor: Colors.white, // White background
      appBar: AppBar(
        title: Text("Signin"),
        backgroundColor: Color(0xFFFB8C00), // Dark Orange AppBar
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
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

              // Sign up Button
              ElevatedButton(
                onPressed: () {
                  print("Email: ${_emailController.text}");
                  print("Password: ${_passwordController.text}");

                  print("");
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromARGB(
                      255, 33, 83, 189), // Dark Orange button color
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                child: Text("Sign in", style: TextStyle(color: Colors.white)),
              ),

              TextButton(
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => Signin()));
                  },
                  child: Text("don't have an account, Signin"))
            ],
          ),
        ),
      ),
    );
  }
}
