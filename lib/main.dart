import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main(){
runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.white,
      ),
      home: IntroApp(),
    );
  }
}

class IntroApp extends StatefulWidget {
  @override
  _IntroAppState createState() => _IntroAppState();
}

class _IntroAppState extends State<IntroApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        title: Text(
          "Skip",
          style: TextStyle(
            color: Colors.grey,
            fontFamily: "Century Gothic"
          ),
        ),
      ),
      body: SafeArea(
          child: Container(
            margin: EdgeInsets.only(top: 30.0),
            child: Center(

              child: Column(

                children: <Widget>[

                  Image.asset(
                      "img/mind.png",
                  ),
                  SizedBox(height: 40),
                  Text(
                    "Walks With animals",
                    style: TextStyle(
                      fontSize: 20.0,
                      fontFamily: "Century Gothic",
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    "Take pupies for a walk and earn money",
                    style: TextStyle(
                      fontSize: 15.0,
                      fontFamily: "Century Gothic",
                      fontWeight: FontWeight.bold,
                      color: Colors.grey
                    ),
                  ),
                  SizedBox(height: 50),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Image.asset(
                            "img/switch.png",
                          fit: BoxFit.cover
                        ),
                        SizedBox(width: 120),
                        ButtonTheme(
                          minWidth: 110,
                          height: 50,
                          child: RaisedButton(
                            splashColor: Color(0xFFFF5B84),
                            highlightColor: Color(0xFFFF5B84),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25.0),
                                side: BorderSide(color: Color(0xFFFF5B84))
                            ),
                            onPressed: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) => Loginpage())
                              );
                            },
                            color: Color(0xFFFF5B84),
                            textColor: Colors.white,
                            child: Text("Next",
                                style: TextStyle(fontSize: 14)),
                          ),
                        ),
                      ],
                  )
                ],
              ),
            ),
          )
      ),
    );
  }
}

class Loginpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: SafeArea(
      child: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(top: 100.0, left: 30.0, right: 30.0),
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              new Icon(
                Icons.pets,
                color: Color(0xFFFF5B84),
              ),
              SizedBox(height: 25),
              Text(
                "How.dy",
                style: TextStyle(
                  fontSize: 20.0,
                  fontFamily: "Century Gothic",
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
              Text(
                "Sign in to continue",
                style: TextStyle(
                    fontSize: 15.0,
                    fontFamily: "Century Gothic",
                    fontWeight: FontWeight.bold,
                    color: Colors.grey
                ),
              ),
              SizedBox(height: 50),
              TextFormField(
                decoration: const InputDecoration(
                  hintText: 'harybackers@gmail.com',
                ),
                cursorColor: Color(0xFFFF5B84),

              ),
              SizedBox(height: 20),
              TextFormField(
                obscureText: true,
                decoration: const InputDecoration(
                  hintText: 'mot de passe',
                ),
                cursorColor: Color(0xFFFF5B84),
                cursorRadius: Radius.circular(12),
              ),
              SizedBox(height: 150),
              Container(
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          color: Color(0xFFFF5B84).withOpacity(0.5),
                          offset: Offset(0, 9),
                          blurRadius: 15,
                          spreadRadius: 3
                      )]
                ),
                width: 400,
                height: 50,
                child: RaisedButton(
                  splashColor: Color(0xFFFF5B84),
                  highlightColor: Color(0xFFFF5B84),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25.0),
                      side: BorderSide(color: Color(0xFFFF5B84))
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Loginpage())
                    );
                  },
                  color: Color(0xFFFF5B84),
                  textColor: Colors.white,
                  child: Text("Get Started",
                      style: TextStyle(fontSize: 14)),
                ),
              ),
            ],
          ),
        ),
      ),
     ),
    );
  }
}



