import 'package:flutter/material.dart';

class TextFieldInput extends StatelessWidget {
  TextEditingController controller =  TextEditingController();

  late bool isPassword;
  late String hintText;
  Widget? suffixIcon;
  late TextInputType keyboardType;
  TextFieldInput({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: keyboardType,
      controller: controller,
      cursorColor: Color.fromARGB(218, 226, 37, 24),
      decoration: InputDecoration(
        hintText: hintText,
        border: const OutlineInputBorder(
          borderSide:  BorderSide(color: Colors.transparent),
        ),
        focusedBorder:const OutlineInputBorder(
          borderSide:  BorderSide(color: Colors.transparent),
        ),
        enabledBorder: const OutlineInputBorder(
          borderSide:  BorderSide(color: Colors.transparent),
        ),
        filled:true,
        contentPadding: EdgeInsets.all(8),
        suffixIcon: suffixIcon,
      ),
      textInputAction: TextInputAction.next,
      obscureText: isPassword,
    );
  }
}

