import 'package:flutter/material.dart';
import 'package:zoom1/widgets/custom_button.dart';
import 'package:zoom1/resources/auth_methods.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'Start or join a meeting',
            style: const TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          
          Image.asset('assets/images/onboarding.jpg'),
          Padding(padding:const EdgeInsets.symmetric(vertical: 38.0)),
          CustomButton(text:'Login',onPressed: () async {
            print("hi");
            await AuthMethods().signInWithGoogle(context);
            print("logged in");
           
            
          },),
        ],
      ),
    );
        
  }
}