import 'package:flutter/material.dart';

class NameTextField extends StatelessWidget {
  const NameTextField({super.key , required this.controller , required this.validator});
  final TextEditingController? controller;
  final String? Function(String?)? validator;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller:controller,
      validator:validator,
      decoration: const InputDecoration(
        label: Text('Name'),
        hintText: 'Enter your name',
        prefixIcon: Icon(Icons.person),
        border: OutlineInputBorder(),
      ),
    );
  }
}
