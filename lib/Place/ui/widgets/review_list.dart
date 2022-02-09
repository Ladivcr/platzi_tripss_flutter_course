import 'package:flutter/material.dart';
import 'review.dart';
class ReviewList extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget> [
        Review("assets/HomeBlog.jpg", "Corduba", "Esto es únicamente una prueba", "Test1"),
        Review("assets/HomeBlog.jpg", "Corduba", "Esto es únicamente una prueba", "Test2"),
        Review("assets/HomeBlog.jpg", "Corduba", "Esto es únicamente una prueba", "Test3"),
        Review("assets/HomeBlog.jpg", "Corduba", "Esto es únicamente una prueba", "Test4"),
        Review("assets/HomeBlog.jpg", "Corduba", "Esto es únicamente una prueba", "Test5"),

      ],
    );
  }
}
