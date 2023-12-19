import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Magic()
    );
  }
}

class Magic extends StatefulWidget {
  const Magic({super.key});

  @override
  State<Magic> createState() => _MagicState();
}

class _MagicState extends State<Magic> {

  var magicI = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Ask Me Anything")),
        backgroundColor: Colors.blue.shade900,
      ),
      backgroundColor: Colors.blue,
      body: Container(
        child: Column(
         // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 50,),
            Center(
              child: Text("Touch the magic ball when you need answer",
              style: TextStyle(
                fontWeight: FontWeight.w800,
                fontSize: 20
              ),
              ),
            ),
            Expanded(child:TextButton(onPressed: () { 
              setState(() {
               magicI= Random().nextInt(5) +1;
               print("I got clicked");
              });
             },
            child: Image.asset("images/ball$magicI.png"))),
          ],
        ),
      ),
    );
  }
}


