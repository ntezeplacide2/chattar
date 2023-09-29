import 'package:chattar/authenticationScreen/login_screen.dart';
import 'package:chattar/controllers/authentication_controllers.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() async
{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp().then((value)
  {
    Get.put(AuthenticationControllers());
  });

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Chatter',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Colors.indigo,
      ),
      debugShowCheckedModeBanner: false,
      home:LoginScreen()   ,
    );
  }
}

