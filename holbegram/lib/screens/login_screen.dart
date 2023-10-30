import 'package:flutter/material.dart';
// import 'signup_screen.dart';
import 'package:holbegram/widgets/text_field.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool _passwordVisible = true;
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    emailController.dispose();
    passwordController.dispose();
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _passwordVisible;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 28,
            ),
            Text(
              'Holbegram',
              style: TextStyle(fontFamily:'Billabong', fontSize: 50),
            ),
            Image.asset(
              'img.png',
              width: 80,
              height: 60,
            ),
            Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 20,
                ),
                child: Column(
                  children: [
                    TextFieldInput(),
                  ],
                )),

            SizedBox(
              height: 28,
            ),
            TextField(
              controller: emailController,
            obscureText: false,
            decoration: InputDecoration(
              hintText: "Email",
            ),
              keyboardType: TextInputType.emailAddress,
            ),

            SizedBox(height: 24,
            ),

            TextField(controller:
            passwordController,
              obscureText: !_passwordVisible,
              decoration: InputDecoration(
                hintText: 'Password',
                suffixIcon: IconButton(
                  alignment: Alignment.bottomLeft,
                  icon: _passwordVisible ? Icon(Icons.visibility) : Icon(Icons.visibility_off),
                  onPressed: () {
                    setState(() {
                      _passwordVisible = !_passwordVisible;
                    });
                    },
                ),
              ),
              keyboardType: TextInputType.visiblePassword,
            ),

            SizedBox(height: 28
              ,),

            SizedBox(height: 48,
              width: double.infinity,
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Color.fromARGB(218, 226, 37, 24),
                  ),
                ),
                onPressed: () {},
                child: Text(
                  'Log in',
                  style: TextStyle(color: Colors.white,),
                ),
              ),
            ),
            SizedBox(height: 24,),
            Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                    'Log in'
                ),
                Text(
                  'get helpe logging in ',
                  style: TextStyle(fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
            Flexible(flex: 0,
              child: Container(),
            ),

            SizedBox(height: 24,),
            Divider(thickness: 2,),
            Padding(padding: EdgeInsets.symmetric(vertical: 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center, children: [
                  Text("Don't have  an account"),
                  TextButton(onPressed: () {},
                    child: Text("Sign up",
                      style: TextStyle(fontWeight: FontWeight.bold, color: Color.fromARGB(218, 226, 37, 24)),
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: 10,),
            Row(children: [
              Flexible(child:Container(),
              ),
              Divider(thickness: 2,
              ),
              Text("OR",
              style: TextStyle(fontSize: 20),
              ),
              Flexible(child:Container(),
              ),
              Divider(thickness: 2,
              ),
            ],),

            SizedBox(height: 10,),
            Row(mainAxisSize:MainAxisSize.min, mainAxisAlignment: MainAxisAlignment.center,children: [
              Image.network('https://www.freepnglogos.com/uploads/google-logo-png/google-logo-png-webinar-optimizing-for-success-google-business-webinar-13.png')
            ],)
          ],
        ),
      ),
    );
  }
}
