import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LaunchScreen extends StatefulWidget {
  const LaunchScreen({super.key}); 

  @override
  State<LaunchScreen> createState() => _LaunchScreenState();
}

class _LaunchScreenState extends State<LaunchScreen> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 3),(){
     Navigator.pushReplacementNamed(context, '/home_screen');
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        decoration:const BoxDecoration(
          gradient: LinearGradient(
            begin: AlignmentDirectional.topStart,
            colors: [
              Color(0xFF606C5D),
              Color(0xFF2E4F4F),
            ]
          )
        ),
        
        child: Text("تطبيق المسبحة",style:GoogleFonts.arefRuqaa(
          fontSize: 40,
          fontWeight: FontWeight.bold,
          color: Colors.white,
          ),),
      ),

    );
  }
}