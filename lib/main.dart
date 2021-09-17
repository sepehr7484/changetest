import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Test(),
  ));
}

class Test extends StatefulWidget {
  @override
  _TestState createState() => _TestState();
}

class _TestState extends State<Test> {
  bool open = true;
  bool open1 = true;
  bool close = false;
  String op = 'Openn';
  String clos = 'Close';
  String clos1 = 'Close';
  String im1 = 'door/door4.png';
  String im2 = 'door/door6.png';
  String im3 = 'door/door5.png';
  String im4 = 'door/bigdoor.png';
  @override
  Widget build(BuildContext context) {
    test1 t1 = new test1();
    test2 t2 = new test2();
    return Scaffold(
      body: Container(
        child: Center(
          child: Column(
            children: [
              Image.asset(im1),

              Text(clos),
              FlatButton(
                  onPressed: () {
                    setState(() {
                      if (open != close) {
                        im1 = im2;
                        clos = op;
                      } else {
                        im3 = im4;
                        clos = clos1;
                      }
                    });
                  },
                  child: Icon(Icons.add_alert_outlined)),
              // GestureDetector(
              //   onTap: () {
              //     setState(() {
              //       if (open != close) {
              //         open = false;
              //         im1 = im3;
              //       }
              //     });
              //   },
              //   onDoubleTap: () {
              //     setState(() {
              //       if (open == close) {
              //         im1 = im4;
              //       }
              //     });
              //   },
              //   child: Image.asset(im1),
              // ),
              // RaisedButton(
              //   onPressed: () {
              //     setState(() {
              //       im1 = im2;
              //     });
              //   },
              //   child: Text('data'),
              // )
            ],
          ),
        ),
      ),
    );
  }
// test1(){
//   return Container(
//     color: Colors.amber.shade200,
//     width: 150,
//     height: 150,
//     child: Center(child: Text('Sajjad'),),
//   );
// }
// test2(){
//   return Container(
//     color: Colors.red.shade200,
//     width: 150,
//     height: 150,
//     child: Center(child: Text('Ali'),),
//   );
// }
}

class test1 extends Container {
  test1() : super(color: Colors.red, width: 100, height: 200);
}

class test2 extends Container {
  test2() : super(color: Colors.yellow, width: 100, height: 200);
}
