import 'package:flutter/material.dart';
import 'package:zoom1/utils/Color.dart';
class CustomButton extends StatelessWidget {
  final String text;
  // final Function() onPressed
   const CustomButton({
    Key? key,
    required this.text,
    // required this.onPressed,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return  ElevatedButton
    (onPressed:(){},
     child: Text(text,style: const TextStyle(fontSize: 17),)
     
     ,
     style:ElevatedButton.styleFrom(
      primary: buttonColor,
      minimumSize: const Size (double.infinity,50),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30),
        side: const BorderSide(color:buttonColor),
      )
     ) 
     ,)
     ;
  }
}