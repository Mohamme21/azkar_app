import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _counter=0;
  String _content="استغفر الله";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
        //automaticallyImplyLeading: false,
        title: Text(
          "مسبحة الاذكار",
          style: GoogleFonts.arefRuqaa(
            color: Colors.black,
            fontSize: 30,
          ),
        ),
        actions: [
          IconButton(onPressed: (){
            Navigator.pushNamed(context, '/info_screen');
          }, icon:const Icon(Icons.info),),
         PopupMenuButton<String>(
          onSelected: (String value){
            if(_content!=value){
              setState(() {
                _content =value;
                _counter=0;
              });
            }
          },
          elevation: 0,
          offset:const Offset(25,35),
          itemBuilder: (context){
          return[
            PopupMenuItem(height: 15,value: "استغفرو الله",child: Text("استغفرو الله",style:GoogleFonts.arefRuqaa(fontWeight: FontWeight.bold),),),
            const PopupMenuDivider(),
            PopupMenuItem(height: 15,value: "الحمد لله",child: Text("الحمد لله ",style:GoogleFonts.arefRuqaa(fontWeight: FontWeight.bold),),),
            const PopupMenuDivider(),
            PopupMenuItem(height: 15,value: "سبحان الله",child: Text("سبحان الله",style:GoogleFonts.arefRuqaa(fontWeight: FontWeight.bold),),),
            const PopupMenuDivider(),
            PopupMenuItem(height: 15,value: "الله أكبر",child: Text("الله اكبر",style:GoogleFonts.arefRuqaa(fontWeight: FontWeight.bold),),),
            const PopupMenuDivider(),
            PopupMenuItem(height: 15,value: "لا اله الا الله",child: Text("لا اله الا الله",style:GoogleFonts.arefRuqaa(fontWeight: FontWeight.bold),),),
            
          ];
         })
        ],
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: AlignmentDirectional.topStart,
            end: AlignmentDirectional.bottomEnd,
            colors: [
              Color(0xFF47A992),
              Color(0xFF9BCDD2),
            ],
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 70,
              width: 70,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSjbXpiM5MCYgNw-IQT-4iU9bINSY0wO0W37Q&usqp=CAU'),
                ),
                color: Colors.grey,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black38,
                    blurRadius: 6,
                    offset: Offset(0, 6),
                  ),
                  //   BoxShadow(
                  //    color: Colors.pinkAccent,
                  //  blurRadius: 6,
                  //offset: Offset(0,-6),
                  //),
                ],
                // shape: BoxShape.rectangle,
                shape: BoxShape.circle,
                //borderRadius: BorderRadius.circular(35),
              ),
            ),
            Container(
              clipBehavior: Clip.antiAlias,
              height: 60,
              margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black38,
                    blurRadius: 6,
                    offset: Offset(0, 6),
                  ),
                ],
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      _content,
                      style: GoogleFonts.arefRuqaa(
                        fontWeight: FontWeight.w700,
                        fontSize: 24,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    color: Colors.teal.shade600,
                    height: 60,
                    width: 50,
                    child: Text(
                      _counter.toString(),
                      style: GoogleFonts.arefRuqaa(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding:const EdgeInsets.symmetric(horizontal: 30),
                child: Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          ++_counter;
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.teal,
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                            topRight:Radius.circular(10),
                          ),
                        ),
                      ),
                      child: Text(
                        "تسبيح",
                        style: GoogleFonts.arefRuqaa(
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                   Expanded(
                     child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          _counter=0;
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                         shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                            topLeft:Radius.circular(10),
                          ),
                        ),
                      ),
                      child: Text(
                        "اعادة",
                        style: GoogleFonts.arefRuqaa(
                          color: Colors.black,
                        ),
                      ),
                  ),
                   ),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        tooltip: "Tap to add",
        backgroundColor: Colors.teal.shade600,
        onPressed: () {
         setState(() {
           ++_counter;
         });
        },
        child:const Icon (Icons.add),
      ),
    );
  }
}
