import 'package:flutter/material.dart';
//import 'package:holbegram/widgets/text_field.dart';

class SignUp extends StatefulWidget { // ignore: must_be_immutable for now!
  final TextEditingController emailController;
  final TextEditingController usernameController;
  final TextEditingController passwordController;
  final TextEditingController passwordConfirmController;
  bool passwordVisible;

  SignUp({
    super.key,
    required this.emailController, 
    required this.usernameController,
    required this.passwordController, 
    required this.passwordConfirmController, 
    this.passwordVisible = true,
  });

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  void dispose(){
    widget.emailController.dispose();
    widget.usernameController.dispose();
    widget.passwordController.dispose();
    widget.passwordConfirmController.dispose();
    super.dispose();
  }

  @override
  initState() {
    widget.passwordVisible;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
}