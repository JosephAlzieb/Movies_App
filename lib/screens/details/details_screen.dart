import 'package:flutter/material.dart';
import 'package:movies_app/components/app_bar.dart';
import 'package:movies_app/components/rating.dart';
import 'package:movies_app/models/movie.dart';

class DetailsScreen extends StatelessWidget {
  final Movie movie;
  const DetailsScreen({this.movie, Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: getAppBar(),
      body: Column(
        children: [
          Rating(movie: movie,),
        ],
      ),
    );
  }
}
