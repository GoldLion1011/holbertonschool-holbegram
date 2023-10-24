import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  final TextEditingController emailController;
  final TextEditingController usernameController;
  final TextEditingController passwordController;
  final TextEditingController passwordConfirmController;
  final bool passwordVisible; // Change _passwordVisible to passwordVisible

  SignUp({
    required this.emailController,
    required this.usernameController,
    required this.passwordController,
    required this.passwordConfirmController,
    this.passwordVisible = true, // Initialize passwordVisible here
  });

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  void initState() {
    super.initState();
    // Initialize the passwordVisible state in the state object
    widget.passwordVisible;
  }

  @override
  void dispose() {
    // Dispose of the controllers when the widget is removed
    widget.emailController.dispose();
    widget.usernameController.dispose();
    widget.passwordController.dispose();
    widget.passwordConfirmController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // Build the UI for the SignUp widget
    // You can access the controllers and passwordVisible from 'widget'
    return Scaffold(
      // ... Scaffold content for SignUp screen
    );
  }
}
