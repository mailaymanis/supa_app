import 'package:flutter/material.dart';

class PasswordTextField extends StatefulWidget {
  const PasswordTextField({super.key , required this.controller , required this.validator});
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  @override
  State<PasswordTextField> createState() => _PasswordTextFieldState();
}

class _PasswordTextFieldState extends State<PasswordTextField> {
  bool _hiddenPassword = true;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller:widget.controller,
      validator:widget.validator,
      obscureText: _hiddenPassword,
      decoration: InputDecoration(
        label: const Text('Password'),
        hintText: 'Enter your password',
        prefixIcon: const Icon(Icons.lock_outline_rounded),
        suffixIcon: IconButton(
          onPressed: () {
            setState(() {
              _hiddenPassword = !_hiddenPassword;
            });
          },
          icon: Icon(_hiddenPassword ? Icons.visibility_off : Icons.visibility),
        ),
        border: const OutlineInputBorder(),
      ),
    );
  }
}
