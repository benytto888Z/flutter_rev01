import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class LessonOne extends StatelessWidget {
  const LessonOne({Key? key}) : super(key: key);

  buttonOnPressed(msg) {
    print("Clicked Button ! $msg");
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.amberAccent,
        appBar: AppBar(
            backgroundColor: Colors.teal,
            elevation: 0,
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
        body: Container(
          alignment: Alignment.center,
          color: Colors.black12,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: const [
                  Text(
                    'Magic',
                    style: TextStyle(color: Colors.white),
                  ),
                  Text(
                    'System B',
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  TextButton(onPressed: () {}, child: const Text('A')),
                  OutlinedButton(onPressed: () {}, child: const Text('B')),
                  ElevatedButton(onPressed: () {}, child: const Text('C'))
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  TextButton.icon(
                      onPressed: () {},
                      icon: Icon(Icons.night_shelter),
                      label: const Text("BB")),
                  OutlinedButton.icon(
                      onPressed: () {},
                      icon: Icon(Icons.night_shelter),
                      label: const Text("BB"),
                      autofocus: true),
                  ElevatedButton.icon(
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(Colors.red),
                        foregroundColor:
                            MaterialStateProperty.all(Colors.cyanAccent),
                        //padding: MaterialStateProperty.all(const EdgeInsets.all(30)),
                        padding: MaterialStateProperty.all(
                            const EdgeInsets.fromLTRB(20, 10, 20, 10)),
                        elevation: MaterialStateProperty.all(0.0)),
                    onPressed: () {},
                    icon: Icon(Icons.night_shelter),
                    // color: Colors.blue,),
                    label: const Text("BB"),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  IconButton(
                    onPressed: () {
                      print("Button clicked");
                    },
                    icon: const Icon(
                      Icons.center_focus_weak_sharp,
                    ),
                  ),
                  IconButton(
                    onPressed: () => print('Button 2 Clicked  !'),
                    icon: const Icon(
                      Icons.center_focus_weak_sharp,
                    ),
                  ),
                  IconButton(
                    // onPressed: buttonOnPressed,
                    // onPressed:() => buttonOnPressed("hello"),
                    onPressed: () {
                      buttonOnPressed("Coco");
                    },
                    icon: const Icon(
                      Icons.center_focus_weak_sharp,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
