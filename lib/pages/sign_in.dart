import 'package:flutter/material.dart';

import 'package:flutter/material.dart';


import 'package:instagram_project/pages/register.dart';
import 'package:instagram_project/responsive/mobile.dart';
import 'package:instagram_project/responsive/responsive.dart';
import 'package:instagram_project/responsive/web.dart';


class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool isVisable = false;
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  bool isLoading = false;

  

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
        final double widthscreen = MediaQuery.of(context).size.width;
    //final googleSignInProvider = Provider.of<GoogleSignInProvider>(context);
    return Scaffold(
        appBar: AppBar(
          title: const Text("Sign in"),
        ),
        body: Center(
            child: Padding(
          padding: widthscreen > 600? EdgeInsets.symmetric(horizontal: widthscreen*0.20 ): const EdgeInsets.all(33.0),
          child: SingleChildScrollView(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              const SizedBox(
                height: 64,
              ),
              TextField(
                  controller: emailController,
                  keyboardType: TextInputType.emailAddress,
                  obscureText: false,
              ),
              
              const SizedBox(
                height: 33,
              ),
              ElevatedButton(
                onPressed: () async {
                  // await signIn();
                  // if (!mounted) return;
                  // showSnackBar(context, "Done ... ");
                  ;
                },
                style: ButtonStyle(
                 // backgroundColor: MaterialStateProperty.all(bTNgreen),
                  padding: MaterialStateProperty.all(const EdgeInsets.all(12)),
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8))),
                ),
                child: isLoading
                    ? const CircularProgressIndicator(
                        color: Colors.white,
                      )
                    : const Text(
                        "Sign in",
                        style: TextStyle(fontSize: 19),
                      ),
              ),
              const SizedBox(
                height: 9,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Do not have an account?",
                      style: TextStyle(fontSize: 18)),
                  TextButton(
                      onPressed: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Register()),
                        );
                      },
                      child: const Text('sign up',
                          style: TextStyle(
                              fontSize: 18,
                              decoration: TextDecoration.underline))),
                ],
              ),
            ]),
          ),
        )));
  }
}