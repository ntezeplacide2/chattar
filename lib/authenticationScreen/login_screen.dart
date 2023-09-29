import 'package:chattar/authenticationScreen/registration_screen.dart';
//import 'package:chattar/authenticationScreen/registration_screen.dart';

import 'package:chattar/widgets/custom-text-field-widget.dart';
import "package:flutter/material.dart";
import 'dart:ui';

import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen>
{
  TextEditingController emailTextEditingController =TextEditingController();
  TextEditingController passwordTextEditingController =TextEditingController();
  bool showProgressBar = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children:[

              const SizedBox(
                height: 90,
              ),
              Container(
                width: 200, // Set the width and height to create a circular shape
                height: 200,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage("images/Untitled.PNG"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
                 const Text(
                "Welcome to Chatter",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  fontFeatures: const<FontFeature>[FontFeature.enable('smcp')],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Please continue by loggin to enjoy. ",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  fontFeatures: const<FontFeature>[FontFeature.enable('smcp')],
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              SizedBox(
                width:MediaQuery.of(context).size.width -36,
                height:59,
                child: CustomTextFieldWidget(
                  editingController: emailTextEditingController,
                  labelText: "Email",
                  iconData: Icons.email_outlined,
                  isObsecure: false,

                ),
              ),
              const SizedBox(
                height: 21,
              ),
              SizedBox(
                width:MediaQuery.of(context).size.width -36,
                height:59,
                child: CustomTextFieldWidget(
                  editingController: passwordTextEditingController,
                  labelText: "Password",
                  iconData: Icons.lock_outlined,
                  isObsecure: true,

                ),
              ),
              const SizedBox(
                height: 29,
              ),
              Container(
                width:MediaQuery.of(context).size.width -36,
                height:59,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(
                    Radius.circular(12),
                    
                  ),
                ),
                child: InkWell(
                  onTap: (){

                  },
                  child: const Center(
                    child: Text(
                        "Login", style: TextStyle(
                      fontSize: 19,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87
                    ),
                    ),
                  ),
                ),

              ),
              const SizedBox(
                height: 20,
              ),
             Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Don't you have an account???",
                  style: TextStyle(
                    fontSize: 17,
                    color: Colors.lightGreen,
                    fontWeight: FontWeight.w900,

                  ),
                  ),
                  InkWell(
                    onTap: () {
                      Get.to(RegistrationScreen()); // Provide an instance of RegistrationScreen
                    },
                    child: const Text(
                      "Signup",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),


                ],
              ),
              const SizedBox(
                height: 20,
              ),
              showProgressBar==true?
              const CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation<Color>(
                  Colors.lightGreenAccent
                ),
              ):
              Container(),
              const SizedBox(
                height: 30,
              ),

            ]
          ),
        ),
      )
    );
  }
}
