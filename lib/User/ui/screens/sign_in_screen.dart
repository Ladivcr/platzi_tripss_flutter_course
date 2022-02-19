import 'package:flutter/material.dart';
import 'package:platzi_tripss_app/User/bloc/bloc_user.dart';
import 'package:platzi_tripss_app/Widgets/gradient_back.dart';
import 'package:platzi_tripss_app/Widgets/button_green.dart';
import 'package:platzi_tripss_app/User/bloc/bloc_user.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:platzi_tripss_app/User/repository/firebase_auth_api.dart';
import 'package:platzi_tripss_app/platzi_trips_cupertino.dart';

class SignInScreen extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _SignInScreen();
  }

}

class _SignInScreen extends State<SignInScreen>{
  late UserBloc userBloc;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    userBloc = BlocProvider.of<UserBloc>(context);
    return _handleCurrentSession();
  }
  Widget _handleCurrentSession(){
    return StreamBuilder(
      stream: userBloc.authStatus(),
      builder: (BuildContext context, AsyncSnapshot snapshot){
        //snapshot contiene nuestra data: objeto user
        if(snapshot.hasData || snapshot.hasError){
          return signIngGoogleUI();

        }else{
          return PlatziTripsCupertino();
        }
      },
    );
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
                userBloc.signIn().then((UserCredential user) => print("El ususario es ${user.user?.displayName}"));
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