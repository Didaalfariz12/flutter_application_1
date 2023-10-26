import 'package:flutter/material.dart';

class MyTextField extends StatefulWidget {
  final TextEditingController controller;
  final String hintText;
  final bool isPassword;
  final Icon icon;

  MyTextField({
    Key? key,
    required this.controller,
    required this.hintText,
    required this.isPassword,
    required this.icon,
  }) : super(key: key);

  @override
  _MyTextFieldState createState() => _MyTextFieldState();
}

class _MyTextFieldState extends State<MyTextField> {
  bool _isObscured = true;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: Row(
        children: [
          widget.icon,
          SizedBox(width: 10), // Add some space between the icon and the text field
          Expanded(
            child: TextField(
              controller: widget.controller,
              obscureText: widget.isPassword ? _isObscured : false,
              decoration: InputDecoration(
                enabledBorder: const OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.red),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.green),
                ),
                fillColor: Colors.grey.shade400,
                filled: true,
                hintText: widget.hintText,
                hintStyle: TextStyle(color: Colors.black),
                suffixIcon: widget.isPassword
                    ? IconButton(
                        onPressed: () {
                          setState(() {
                            _isObscured = !_isObscured;
                          });
                        },
                        icon: Icon(
                          _isObscured ? Icons.visibility : Icons.visibility_off,
                          color: Colors.grey,
                        ),
                      )
                    : null,
              ),
            ),
          ),
        ],
      ),
    );
  }
}