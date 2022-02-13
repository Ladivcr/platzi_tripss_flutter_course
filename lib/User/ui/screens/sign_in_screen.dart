import 'package:flutter/material.dart';
import 'package:platzi_tripss_app/Widgets/gradient_back.dart';
import 'package:platzi_tripss_app/Widgets/button_green.dart';

class SignInScreen extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _SignInScreen();
  }

}

class _SignInScreen extends State<SignInScreen>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return signIngGoogleUI();
  }

  Widget signIngGoogleUI() {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          GradientBack("", MediaQuery.of(context).size.height), // También se puede usar: “double.infinity”
          Column(
            mainAxisAlignment: MainAxisAlignment.center, //Cemtrar de manera vertical
            crossAxisAlignment: CrossAxisAlignment.center, //centrar de manera horizontal
            children: <Widget>[
              Text("Welcome \n This is your Travel App",
                style: TextStyle(fontSize: 37.0, fontFamily: "Lipo", color: Colors.white, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center
              ),
              ButtonGreen(text: "Login with Gmail", onPressed: () {

              },
                width: 300.0,
                height: 50.0,
              )
            ],
          ),

        ],
      ),
    );
  }
  
}