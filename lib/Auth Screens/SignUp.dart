import 'package:flutter/material.dart';
import 'SignIn.dart';
import 'package:medi_cal/Utilities.dart';


class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    final size=MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('assets/Frame 3.png',scale: 4.5,),
                    SizedBox(width: size.width*0.02,),
                    Image.asset('assets/Frame 4.png',scale: 4.5,),
                    SizedBox(width: size.width*0.02,),
                    Image.asset('assets/Frame 5.png',scale: 4.5,),

                  ],
                ),


                SizedBox(height: size.height*0.05,),

                const Text('Get Started', style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.w400,
                ),),

                SizedBox(height: size.height*0.015,),

                const Text('Doctor appointment, buy medicines, online consultation with top doctor, and find nearby hospital',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 12,
                  ),),

                SizedBox(height: size.height*0.05,),

                SignUpOptions(size.height*0.08, size.width, 'assets/Maillogo.png', 'Continue with Email'),
                SizedBox(height: size.height*.025,),

                SignUpOptions(size.height*0.08, size.width, 'assets/Google logo.png', 'Continue with Google'),
                SizedBox(height: size.height*.025,),

                SignUpOptions(size.height*0.08, size.width, 'assets/Apple logo.png', 'Continue with Apple'),


                SizedBox(height: size.height*.06,),


                SignInSignUpText(context, 'Already have an account?', 'Sign in', SignIn()),



                SizedBox(height: size.height*.08,),

              ],
            ),
          ),
        ),
      ),
    );
  }
}