import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: new ThemeData(
          scaffoldBackgroundColor: Color.fromARGB(255, 15, 24, 22)),
      home: Tasks(),
    );
  }
}

class Tasks extends StatelessWidget {
  const Tasks({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Color.fromARGB(255, 15, 24, 22),
        title: Title(
          color: Colors.red,
          child: Text(
            "Profile",
            style: TextStyle(
              color: Color.fromARGB(255, 255, 255, 255),
              fontSize: 23,
              fontFamily: "myfont",
              fontStyle: FontStyle.italic,
            ),
          ),
        ),
        leading: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.menu,
              color: Color.fromARGB(255, 255, 255, 255),
              size: 33,
            )),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.sensor_occupied_outlined,
                size: 27,
                color: Color.fromARGB(255, 255, 255, 255),
              )),
          IconButton(
              onPressed: () {},
              icon: Icon(Icons.dark_mode_rounded,
                  size: 27, color: Color.fromARGB(255, 255, 255, 255))),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.fromLTRB(30, 15, 30, 15),
            decoration: BoxDecoration(
                color: Colors.amberAccent[200],
                borderRadius: BorderRadius.circular(66)),
            child: TextField(
              keyboardType: TextInputType.emailAddress,
              textInputAction: TextInputAction.next,
              decoration: InputDecoration(
                labelText: "Your Email ",
                labelStyle: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontFamily: "myfont",
                    fontSize: 20),
                prefixIcon: Icon(
                  Icons.person,
                  color: Colors.white,
                  size: 27,
                ),
                border: InputBorder.none,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(30, 15, 30, 15),
            decoration: BoxDecoration(
                color: Colors.amberAccent[200],
                borderRadius: BorderRadius.circular(66)),
            child: TextField(
              obscureText: true,
              keyboardType: TextInputType.visiblePassword,
              textInputAction: TextInputAction.done,
              decoration: InputDecoration(
                labelText: "Password",
                labelStyle: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontFamily: "myfont",
                    fontSize: 20),
                prefixIcon: Icon(
                  Icons.lock_outline,
                  color: Colors.white,
                  size: 27,
                ),
                border: InputBorder.none,
              ),
            ),
          ),
          Container(
            width: 340,
            height: 60,
            margin: EdgeInsets.fromLTRB(30, 15, 30, 15),
            child: ElevatedButton(
              onPressed: () {},
              child: Text(
                "Login",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontFamily: "myfont",
                    fontSize: 25),
              ),
              style: ButtonStyle(
                backgroundColor:
                    MaterialStatePropertyAll(Colors.amberAccent[400]),
              ),
            ),
          )
        ],
      ),
    );
  }
}
