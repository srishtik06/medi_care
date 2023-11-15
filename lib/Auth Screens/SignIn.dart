import 'package:flutter/material.dart';
import 'package:medi_cal/AppAfterLogin.dart';
import 'SignUp.dart';
import 'package:medi_cal/Utilities.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    final size=MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  SizedBox(height: size.height*0.04,),

                  IconButton(
                      onPressed:(){
                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>const SignUp()));
                      },
                      icon: const Icon(Icons.arrow_back_ios)
                  ),

                  SizedBox(height: size.height*0.02,),

                  const Text('Welcome Back', style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.w400,
                  ),),

                  SizedBox(height: size.height*0.02,),

                  const Text('Please login first to use Wellness Experts feature',style: TextStyle(
                    color: Colors.grey,
                    fontSize: 18,
                  ),),

                  SizedBox(height: size.height*0.04,),

                  Container(
                      height: size.height*0.08,
                      width: size.width,
                      decoration: BoxDecoration(
                          color: Color(0xFFEEF6F7),
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(
                            color:Color(0xFFEEF6F7),
                            width: 2,
                          )
                      ),

                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            height: size.height*0.05,
                            width: size.width*0.35,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(12),
                                border: Border.all(
                                  color:Color(0xFFEEF6F7),
                                  width: 2,
                                )
                            ),

                            child: const Center(
                              child: Text('Email',style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.black
                              ),),

                            ),
                          ),

                          const Text('Phone',style: TextStyle(
                              fontSize: 15,
                              color: Colors.black
                          ),)
                        ],
                      )
                  ),

                  SizedBox(height: size.height*0.04,),


                  TextFormField(
                    textInputAction: TextInputAction.next,
                    style: const TextStyle(
                      color: Colors.black,
                    ),
                    decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.mail_outline,
                        color: Colors.black,
                        size: 38,
                      ),
                      contentPadding: EdgeInsets.fromLTRB(25,25,25,25),
                      labelText: 'Enter your Email',
                      labelStyle: const TextStyle(
                        color: Colors.black,
                        fontSize: 17,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: const BorderSide(
                          color: Colors.black,
                          width: 2,
                        ),
                      ),

                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: const BorderSide(
                          color: Colors.black,
                          width: 2,
                        ),
                      ),

                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: const BorderSide(
                          color: Colors.black,
                          width: 2,

                        ) ,
                      ),
                    ),),

                  SizedBox(height: size.height*0.03,),

                  TextFormField(
                    obscureText: true,
                    textInputAction: TextInputAction.next,
                    style: const TextStyle(
                      color: Colors.black,
                    ),
                    decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.lock_outline,
                        color: Colors.black,
                        size: 38,
                      ),
                      contentPadding: EdgeInsets.fromLTRB(25,25,25,25),
                      labelText: 'Enter your Password',
                      labelStyle: const TextStyle(
                        color: Colors.black,
                        fontSize: 17,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: const BorderSide(
                          color: Colors.black,
                          width: 2,
                        ),
                      ),

                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: const BorderSide(
                          color: Colors.black,
                          width: 2,
                        ),
                      ),

                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: const BorderSide(
                          color: Colors.black,
                          width: 2,

                        ) ,
                      ),
                    ),),

                  SizedBox(height: size.height*0.02,),


                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text('Forgot Password?',
                        style: TextStyle(
                            color: Color(0xFF99004C),
                            fontSize: 15,
                            fontWeight: FontWeight.w500
                        ),),
                    ],
                  ),

                  SizedBox(height: size.height*0.035,),

                  Container(
                    height: size.height*0.08,
                    width: size.width,
                    child: TextButton(
                      onPressed: () {
                        Navigator.pushReplacement(context, MaterialPageRoute(
                            builder: (context)=> AppAfterLogin()));
                      },
                      child: Text('Sign In',style: TextStyle(color: Colors.white,fontSize: 16),),
                      style: TextButton.styleFrom(
                        backgroundColor:Color(0xFF50A5AE),
                        side: BorderSide(color: Color(0xFF50A5AE), width: 2.0),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),

                      ),
                    ),
                  ),

                  SizedBox(height: size.height*0.05,),


                  Row(
                    children: [
                      Expanded(
                        child: Divider(
                          color: Colors.grey,
                          thickness: 1.25,// Color of the divider line
                        ),
                      ),

                      SizedBox(width: size.width*0.02,),

                      Text('Or sign in with'),

                      SizedBox(width: size.width*0.02,),

                      Expanded(
                        child: Divider(
                          color: Colors.grey,
                          thickness: 1.25,// Color of the divider line
                        ),
                      ),

                    ],
                  ),

                  SizedBox(height: size.height*0.05,),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GoogleSignUp(size.height*0.08, 'assets/Google logo.png', 'Google', size.width*0.4),
                      GoogleSignUp(size.height*0.08, 'assets/Apple logo.png', 'Apple', size.width*0.4),
                    ],
                  ),

                  SizedBox(height: size.height*0.06,),


                  SignInSignUpText(context, 'Dont\'t have an account?', 'Sign up', SignUp()),

                  SizedBox(height: size.height*.08,),
                ],
              ),
            ),
          ),
        ),
      ),

    );
  }
}