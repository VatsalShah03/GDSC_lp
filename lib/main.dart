import 'package:flutter/material.dart';
import 'package:gdsc/page2.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: GoogleFonts.montserrat().fontFamily
      ),
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  RichText(
                      text: const TextSpan(
                        style: TextStyle(fontSize: 30,color: Colors.black),
                    children: [
                      TextSpan(text: "Hello "),
                      TextSpan(text: "Nick",style: TextStyle(fontWeight: FontWeight.w800))
                    ]
                  )),
                  Icon(Icons.notifications_active_outlined,size: 30,),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CircleAvatar(backgroundImage: AssetImage("Assets/download.jpg"),radius: 20,),
                  ),
                ],
              ),
              MyCard(),

            ],
          ),
        ),
      ),
    );
  }
}

class MyCard extends StatelessWidget {
  const MyCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>Page2()));},
      child: Card(
        margin: EdgeInsets.only(top: 20,left: 10,right: 10),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15)
        ),
        color: Color.fromRGBO(225,255,15, 1),
        child: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset("Assets/download (1).jpg", width: 20,height: 20,),
                  Text("DS Bank", style: TextStyle(fontWeight: FontWeight.w900),)
                ],
              ),
              SizedBox(height: 50,),
              Text("Balance ", style: TextStyle( color: Colors.grey),),

              Row(
                children: [
                  Text("50,000.00", style: TextStyle(fontWeight: FontWeight.w900, fontSize: 40),),



                ],
              )
            ],

          ),
        ),
      ),
    );
  }
}

