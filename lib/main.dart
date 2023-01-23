import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'First Design',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Blood Bank App Elements'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  bool _istrue = false;

  get child => null;

  void _incrementCounter() {
    setState(() {
      _counter++;
      if (_counter >= 9) {
        _istrue = true;
      }
    });
  }

  void _dcm() {
    setState(() {
      _counter--;
      if (_counter < 9) {
        _istrue = false;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
        appBar: AppBar(
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: Text(widget.title),
        ),
        body: Center(
            // Center is a layout widget. It takes a single child and positions it
            // in the middle of the parent.
            child: Container(
                margin: EdgeInsets.all(10),
                width: 1000,
                height: 1000,
                child: Container(
                    width: 800,
                    height: 800,
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Container(
                              child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Container(
                                width: 200,
                                height: 200,
                                decoration: BoxDecoration(
                                    color: Colors.grey,
                                    borderRadius: BorderRadius.circular(20)),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Container(
                                      padding:
                                          EdgeInsets.fromLTRB(30, 30, 20, 0),
                                      child: const Text(
                                        ' Sarita',
                                        style: TextStyle(
                                            color: Color.fromARGB(
                                                255, 254, 252, 252),
                                            fontSize: 20),
                                      ),
                                    ),
                                    Container(
                                      padding: EdgeInsets.fromLTRB(30, 0, 0, 0),
                                      child: const Text(
                                        ' Blood ',
                                        style: TextStyle(
                                            color: Color.fromARGB(
                                                255, 249, 248, 248),
                                            fontSize: 20),
                                      ),
                                    ),
                                    Container(
                                      padding: EdgeInsets.fromLTRB(30, 0, 0, 0),
                                      child: const Text(
                                        ' Bank',
                                        style: TextStyle(
                                            color: Color.fromARGB(
                                                255, 251, 251, 251),
                                            fontSize: 20),
                                      ),
                                    ),
                                    Container(
                                        padding:
                                            EdgeInsets.fromLTRB(30, 20, 0, 0),
                                        child: Icon(Icons.message,
                                            size: 50, color: Colors.green))
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Container(
                                width: 200,
                                height: 200,
                                decoration: BoxDecoration(
                                    //  color: Color.fromARGB(255, 217, 217, 217),
                                    borderRadius: BorderRadius.circular(20)),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Container(
                                      child: const Text(
                                        'Blood Group',
                                        style: TextStyle(
                                            color: Colors.red, fontSize: 20),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Container(
                                      child: const Text(
                                        'B +ve',
                                        style: TextStyle(
                                            color: Colors.black, fontSize: 30),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 15,
                                    ),
                                    Container(
                                      child: const Text(
                                        'Add Units',
                                        style: TextStyle(
                                            color: Colors.black, fontSize: 15),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Container(
                                        margin: EdgeInsets.all(10),
                                        height: 60,
                                        width: 180,
                                        decoration: BoxDecoration(
                                            color: Colors.grey,
                                            borderRadius:
                                                BorderRadius.circular(10)),
                                        child: Center(
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceAround,
                                                children: <Widget>[
                                              if (_counter > 0)
                                                ElevatedButton(
                                                  onPressed: _dcm,
                                                  child: Text("-"),
                                                  style:
                                                      ElevatedButton.styleFrom(
                                                          primary: Colors.white,
                                                          onPrimary:
                                                              Colors.black),
                                                ),
                                              Text(
                                                '$_counter',
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .headline4,
                                              ),
                                              SizedBox(
                                                height: 10,
                                              ),
                                              if (_counter < 9)
                                                ElevatedButton(
                                                  onPressed: _incrementCounter,
                                                  child: Text("+"),
                                                  style:
                                                      ElevatedButton.styleFrom(
                                                          primary: Colors.white,
                                                          onPrimary:
                                                              Colors.black),
                                                ),
                                            ]))),
                                  ],
                                ),
                              ),
                            ],
                          )),
                          Visibility(
                              visible: _istrue,
                              child: Container(
                                margin: EdgeInsets.all(30),
                                width: 400,
                                height: 50,
                                decoration: BoxDecoration(
                                    color: Colors.red,
                                    borderRadius: BorderRadius.circular(5)),
                                child: Center(
                                    child: Container(
                                  child: const Text(
                                    'you have reached the limit',
                                    style: TextStyle(
                                        color:
                                            Color.fromARGB(255, 246, 243, 243),
                                        fontSize: 20),
                                  ),
                                )),
                              ))
                        ])))));
  }
}
