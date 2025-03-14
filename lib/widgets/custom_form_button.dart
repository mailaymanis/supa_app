import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key , required this.text , required this.onPressed});
  final String text;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width:MediaQuery.sizeOf(context).width,
      child: ElevatedButton(
        style:ElevatedButton.styleFrom(
          shape:RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          backgroundColor: Colors.blue.shade200,
          padding:const EdgeInsets.symmetric(vertical: 8 , horizontal: 8),
        ),
        onPressed:onPressed,
        child:  Text(text , style: Theme.of(context).textTheme.headlineLarge?.copyWith(
            color:Colors.white
        ),),
      ),
    );
  }
}
