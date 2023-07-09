import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class InfoScreen extends StatelessWidget {
  const InfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
       // automaticallyImplyLeading: false,
        title: Text(
          "تطبيق اذكار",
          style: GoogleFonts.arefRuqaa(
            fontWeight: FontWeight.w700,
            fontSize: 35,
            color: Colors.black,
          ),
        ),
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: AlignmentDirectional.topStart,
            end: AlignmentDirectional.bottomEnd,
            colors: [
              Color(0xFF606C5D),
              Color(0xFF2E4F4F),
            ],
          ),
        ),
        child:  Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
             Center(
               child: Text(
               "اذكار",
                       style: GoogleFonts.arefRuqaa(
                         fontWeight: FontWeight.w700,
                         fontSize: 24,
                       ),
                     ),
             ),
             Center(
               child: Text(
               "Azkar",
                       style: GoogleFonts.arefRuqaa(
                         fontWeight: FontWeight.w700,
                         fontSize: 24,
                       ),
                     ),
             ),
          const Image(
              image: NetworkImage(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRqJ2i-Z5cWtjYIT3hOdTDF2khT6zB4gLHhuw&usqp=CAU'),
            ),
          ],
        ),
      ),
    );
  }
}
