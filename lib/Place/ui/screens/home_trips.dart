import 'package:flutter/material.dart';
import '../widgets/review_list.dart';
import '../widgets/description_place.dart';
import 'header_appbar.dart';

class HomeTrips extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Stack(
      children: <Widget> [
        ListView(
          children: <Widget> [
            DescriptionPlace("Corduba", 4, "Corduba, ahora Cordoba, fue la ciudad donde nacio Séneca. Lorem Ipsum is simply dummy text of the printing and typesseting industry."),
            ReviewList(),
          ],
        ),
        HeaderAppBar()
      ],
    );
  }


}