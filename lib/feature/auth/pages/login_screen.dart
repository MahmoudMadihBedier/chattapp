import 'package:chattapp/feature/auth/pages/singup_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../core/theme/app_pallet.dart';
import '../../homePage/home.dart';
import '../widgets/auth_gradinat_button.dart';
import '../widgets/authh_field.dart';

class LoginPage extends StatefulWidget {

  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final emailController = TextEditingController();
  final phoneController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    emailController.dispose();
    phoneController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // formKey.currentState!.validate();
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Form(
              key: formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Sign In.',
                    style: TextStyle(
                        fontSize: 50,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                  SizedBox(height: 30,),

                  SizedBox(height: 10,),
                  Authfield(
                    hintText: "Username",
                    controller: emailController,
                    Typekeyboard: TextInputType.text,
                  ),
                  SizedBox(height: 10,),
                  Authfield(hintText: "Phone Number",
                    controller: phoneController ,
                    isObscureText: false,
                    Typekeyboard: TextInputType.phone,
                  ),
                  SizedBox(height: 20,),
                  AuthGridentButton(
                      ButtonText: "Sign In",
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const HomePage()));
                      }),
                  SizedBox(height: 20,),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const SingupPage()));
                    },
                    child: RichText(text:
                    const TextSpan(
                        text: 'don\'t have an account?   ',
                        style: TextStyle(
                            color: Colors.white
                        ),
                        children: [
                          TextSpan(
                              text: 'Register',
                              style: TextStyle(
                                  color: AppPallete.gradient2
                              )
                          )
                        ]
                    ),
                    ),
                  )
                ],
              ),
            ),));
  }
}