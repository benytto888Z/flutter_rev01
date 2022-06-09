import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class LessonThree extends StatelessWidget {
  const LessonThree({Key? key}) : super(key: key);

  buttonOnPressed(msg) {
    print("Clicked Button ! $msg");
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
          primarySwatch: Colors.pink,
          accentColor: Colors.black,
          buttonTheme: ButtonThemeData(
            buttonColor: Colors.deepPurpleAccent,
            textTheme: ButtonTextTheme.accent,
          ),
          elevatedButtonTheme: ElevatedButtonThemeData(
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.green)))),
      home: Scaffold(
        appBar: AppBar(
            elevation: 0,
            leading: const Icon(
              Icons.center_focus_weak_sharp,
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
                  FloatingActionButton.extended(
                    label: const Text("Add"),
                    icon: Icon(Icons.add),
                    onPressed: () {},
                    backgroundColor: Colors.purple,
                    foregroundColor: Color.fromARGB(255, 253, 252, 255),
                    // shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero,),
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(20),
                        ),
                        side: BorderSide(
                            color: Colors.black,
                            width: 6,
                            style: BorderStyle.solid)),
                    splashColor: Colors.yellow,
                  ),
                ],
              ),
            ],
          ),
        ),
        /* floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),*/
        floatingActionButton: FloatingActionButton.extended(
          label: const Text("Add"),
          icon: Icon(Icons.add),
          onPressed: () {},
          backgroundColor: Colors.purple,
          foregroundColor: Color.fromARGB(255, 253, 252, 255),
          // shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero,),
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(20),
              ),
              side: BorderSide(
                  color: Colors.black, width: 6, style: BorderStyle.solid)),
          splashColor: Colors.yellow,
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      ),
    );
  }
}
