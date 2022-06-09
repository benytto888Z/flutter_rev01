import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class LessonTwo extends StatelessWidget {
  const LessonTwo({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 207, 209, 203),
        appBar: AppBar(
            backgroundColor: Colors.teal,
            leading: const Icon(
              Icons.center_focus_weak_sharp,
              color: Color.fromARGB(255, 228, 121, 21),
            ),
            title: const Text("Home Page"),
            actions: const [
              Icon(Icons.center_focus_weak_sharp),
              Icon(Icons.center_focus_weak_sharp),
              Icon(Icons.center_focus_weak_sharp),
            ]),
        body: const Text(
          "Body Title ex",
          style: TextStyle(
            color: Color.fromARGB(255, 28, 6, 224),
            fontWeight: FontWeight.w900,
            fontSize: 50,
            fontStyle: FontStyle.italic,
            letterSpacing: 5,
            wordSpacing: 15,
            height: 10,
            shadows: <Shadow>[
              Shadow(
                offset: Offset(2.0,7.0),
                blurRadius: 15,
                color: Color.fromARGB(255, 85, 84, 84),
              ),
              Shadow(
                offset: Offset(2.0, 7.0),
                blurRadius: 15,
                color: Color.fromARGB(255, 85, 84, 84),
              )
            ],
           // decoration: TextDecoration.underline,
            decoration: TextDecoration.underline ,
            decorationColor: Colors.yellow,
            decorationStyle: TextDecorationStyle.wavy,
            decorationThickness: 2
           ),
        ),
      ),
    );
  }
}
