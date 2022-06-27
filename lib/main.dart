import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool q = true;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    q = true;
  }

  @override
  Widget build(BuildContext context) {
    return (MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Neumorphism| Soft UI",
      home: Scaffold(
        backgroundColor: q ? Colors.grey[900] : Colors.grey[300],
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 200,
                width: 200,
                padding: EdgeInsets.all(20),
                child: Icon(
                  Icons.apple,
                  size: 100,
                  color: q ? Colors.white : Colors.black,
                ),
                decoration: BoxDecoration(
                    color: q ? Colors.grey[900] : Colors.grey[300],
                    borderRadius: BorderRadius.circular(30),
                    boxShadow: [
                      BoxShadow(
                          color: q ? Colors.grey.shade800 : Colors.white,
                          blurRadius: 15,
                          spreadRadius: 1.0,
                          offset: Offset(-4, -4)),
                      BoxShadow(
                          color: q ? Colors.black : Colors.grey.shade400,
                          blurRadius: 15,
                          spreadRadius: 1.0,
                          offset: Offset(4, 4))
                    ]),
              ),
              SizedBox(
                height: 40,
              ),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          q = true;
                        });
                      },
                      child: Container(
                        height: 60,
                        width: 130,
                        padding: EdgeInsets.all(20),
                        child: Center(
                          child: Text(
                            "Dark",
                            style:
                                TextStyle(color: q ? Colors.white : Colors.black,
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        decoration: BoxDecoration(
                            color: q ? Colors.grey[900] : Colors.grey[300],
                            borderRadius: BorderRadius.circular(30),
                            boxShadow: [
                              BoxShadow(
                                  color: q ? Colors.grey.shade800 : Colors.white,
                                  blurRadius: 15,
                                  spreadRadius: 1.0,
                                  offset: Offset(-4, -4)),
                              BoxShadow(
                                  color: q ? Colors.black : Colors.grey.shade400,
                                  blurRadius: 15,
                                  spreadRadius: 1.0,
                                  offset: Offset(4, 4))
                            ]),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          q = false;
                        });
                      },
                      child: Container(
                        height: 60,
                        width: 130,
                        padding: EdgeInsets.all(20),
                        child: Center(
                          child: Text(
                            "Light ",
                            style: TextStyle(
                              color: q ? Colors.white : Colors.black,
                              fontSize: 15,
                              fontWeight: FontWeight.bold
                            ),
                          ),
                        ),
                        decoration: BoxDecoration(
                            color: q ? Colors.grey[900] : Colors.grey[300],
                            borderRadius: BorderRadius.circular(30),
                            boxShadow: [
                              BoxShadow(
                                  color: q ? Colors.grey.shade800 : Colors.white,
                                  blurRadius: 15,
                                  spreadRadius: 1.0,
                                  offset: Offset(-4, -4)),
                              BoxShadow(
                                  color: q ? Colors.black : Colors.grey.shade400,
                                  blurRadius: 15,
                                  spreadRadius: 1.0,
                                  offset: Offset(4, 4))
                            ]),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    ));
  }
}
