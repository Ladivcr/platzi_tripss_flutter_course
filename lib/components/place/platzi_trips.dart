import 'package:flutter/material.dart';
import 'home_trips.dart';
import 'profile_trips.dart';
import 'search_trips.dart';

class PlatziTrips extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _PlatziTrips();
  }
}

class _PlatziTrips extends State<PlatziTrips>{
  int indexTap = 0;

  final List<Widget> widgetsChildren = [
    HomeTrips(),
    ProfileTrips(),
    SearchTrips(),
  ];
  void onTapTapped(int index){
    setState(() {
      indexTap = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build


    return Scaffold(
      body: widgetsChildren [indexTap],
        bottomNavigationBar: Theme(
          data: Theme.of(context).copyWith(
            canvasColor: Colors.white,
            primaryColor: Colors.purple
          ),
          child: BottomNavigationBar(
            onTap: onTapTapped,
            currentIndex: indexTap,
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.add),
                title: Text("Upload"),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                title: Text("Home"),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.search),
                title: Text("Search"),
              ),

            ],
          ),
        ),
      /*body: Column(
          children: <Widget> [
            DescriptionPlace("Cordoba", 3, "Esta es una prueba de la descripción de las primeras clases"),
            ReviewList(),

        ]
      )*/
    );
  }

}