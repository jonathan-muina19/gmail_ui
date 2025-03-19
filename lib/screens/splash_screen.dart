import 'package:flutter/material.dart';
import 'dart:async';

import 'package:gmail_ui/screens/home_screen.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override

  // Cette fonction permet d'attendre 5 secondes avant d'afficher la HomeScreen
   void initState(){
    super.initState();
    Timer(Duration(seconds: 3), (){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>HomeScreen()
      ));
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Center(
              child: Image.asset('assets/images/email.png'),
            ),
          ),
          Text('Google Workspace', style: TextStyle(
            fontSize: 26,
            fontWeight: FontWeight.normal,
            color: Colors.grey
          ),
        ),
          SizedBox(height: 50)
        ],
        
      ),
      
    );
  }
}