import 'package:dajek_driver/home_screen.dart';
import 'package:dajek_driver/ui/sign_up/signup_screen.dart';
import 'package:dajek_driver/utils/constant.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _isObscure = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: Column(
            children: [
              Spacer(),
              /// Image Dajek
              Hero(
                tag: "Image",
                child: Image.asset(imageDajek, width: 175),
              ),
              SizedBox(
                height: 50,
              ),
              ///TextField Email
              Container(
                width: double.infinity,
                height: 60,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10), color: lightGrey),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Email",

                        hintStyle: textOnBoardingSub),
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              ///TextField Passwod
              Container(
                width: double.infinity,
                height: 60,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10), color: lightGrey),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    obscureText: _isObscure,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Password",
                      hintStyle: textOnBoardingSub,
                      suffixIcon: IconButton(
                        icon: Icon(
                          _isObscure ? Icons.visibility : Icons.visibility_off,
                          color: grey1,
                        ),
                        onPressed: () {
                          setState(() {
                            _isObscure = !_isObscure;
                          });
                        },
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              ///Button Login
              InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> HomeScreen()));
                },
                child: Container(
                  width: double.infinity,
                  height: 60,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50), color: red1),
                  child: Center(
                      child: Text(
                        "Login",
                        style: textButtonBoarding,
                      )),
                ),
              ),
              ///Divided & or Text
              Stack(
                children: [
                  Divider(
                    color: lineGrey,
                    height: 55,
                    thickness: 2,
                  ),
                  Center(
                    child: Container(
                        color: Colors.white,
                        height: 55,
                        width: 40,
                        child: Center(
                            child: Text(
                              "or",
                              style: textOnBoardingSub,
                            ))),
                  )
                ],
              ),
              /// Button Sign Up with Google
              InkWell(
                onTap: () {},
                child: Container(
                    width: double.infinity,
                    height: 60,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        border: Border.all(color: lineGrey, width: 2)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset("assets/images/google_logo.png", width: 30,),
                        SizedBox(width: 10,),
                        Text("Sign Up With Google", style: textOnBoardingSub,)
                      ],
                    )),
              ),
              Spacer(),
              ///Text & Text Button Sign UP
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Don’t  have an account?", style: textOnBoardingSub,),
                  TextButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> SignupScreen()));
                  }, child: Text("Sign Up", style: textSignUp,)),
                ],
              ),
              SizedBox(height: 15,)
            ],
          ),
        ),
      ),
    );
  }
}