import 'package:flutter/material.dart';

class Page2 extends StatelessWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: Column(
        children: [
          Center(
            child: Column(
              children: [
                Text("Balance ", style: TextStyle( color: Colors.grey, fontSize: 20),),
                Text("50,000.00", style: TextStyle(fontWeight: FontWeight.w900, fontSize: 40),),
                SizedBox(height: 50,),
                Container(
                  color: Colors.black,
                )
              ],
            )
          )
        ],
      ),
    );
  }
}
