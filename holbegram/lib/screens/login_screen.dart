import 'package:flutter/material.dart';
import 'package:holbegram/widgets/text_field.dart';

class LoginScreen extends StatefulWidget {
  final TextEditingController emailController;
  final TextEditingController passwordController;
  bool passwordVisible;

  LoginScreen({
    required this.emailController,
    required this.passwordController,
    this.passwordVisible = true,
  });

  @override
  LoginScreenState createState() => LoginScreenState();
}

class LoginScreenState extends State<LoginScreen> {
  @override
  void dispose() {
    widget.emailController.dispose();
    widget.passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const SizedBox(height: 28),
            const Text(
              "Holbegram",
              style: TextStyle(
                fontFamily: "Billabong",
                fontSize: 50,
              ),
            ),
            Image(
              image: AssetImage("your_logo_image_path"),
              width: 80,
              height: 60,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: <Widget>[
                  const SizedBox(height: 28),
                  const SizedBox(height: 28),
                  TextFieldInput(
                    controller: widget.emailController,
                    isPassword: false,
                    hintText: "Email",
                    keyboardType: TextInputType.emailAddress,
                  ),
                  const SizedBox(height: 24),
                  TextFieldInput(
                    controller: widget.passwordController,
                    isPassword: !widget.passwordVisible,
                    hintText: "Password",
                    keyboardType: TextInputType.visiblePassword,
                    suffixIcon: IconButton(
                      alignment: Alignment.bottomLeft,
                      onPressed: () {
                        setState(() {
                          widget.passwordVisible = !widget.passwordVisible;
                        });
                      },
                      icon: widget.passwordVisible
                          ? Icon(Icons.visibility)
                          : Icon(Icons.visibility_off),
                    ),
                  ),
                  const SizedBox(height: 28),
                  SizedBox(
                    height: 48,
                    width: double.infinity,
                    child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                          Color.fromARGB(218, 226, 37, 24),
                        ),
                      ),
                      onPressed: () {
                        // Handle the login button press here.
                      },
                      child: const Text(
                        "Log in",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  const SizedBox(height: 24),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      const Text("Forgot your login details?"),
                      Text(
                        " Get help logging in",
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Flexible(flex: 0, child: Container()),
                  const SizedBox(height: 24),
                  const Divider(thickness: 2),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 12),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        const Text("Don't have an account"),
                        TextButton(
                          onPressed: () {
                            // Handle the Sign Up button press here.
                          },
                          child: const Text(
                            "Sign up",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(218, 226, 37, 24),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: <Widget>[
                      Flexible(flex: 1, child: const Divider(thickness: 2)),
                      const Text(" OR "),
                      Flexible(flex: 1, child: const Divider(thickness: 2)),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Image.network(
                        "your_google_sign_in_image_link",
                        width: 40,
                        height: 40,
                      ),
                      const Text("Sign in with Google"),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
