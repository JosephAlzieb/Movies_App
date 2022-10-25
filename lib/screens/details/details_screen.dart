import 'package:flutter/material.dart';
import 'package:movies_app/components/app_bar.dart';
import 'package:movies_app/components/genres.dart';
import 'package:movies_app/components/rating.dart';
import 'package:movies_app/components/title_and_duration.dart';
import 'package:movies_app/models/movie.dart';

import '../../config/constants.dart';

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
          TitleAndDuration(movie: movie,),
          Genres(genres: movie.genra),
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: defaultPadding / 2,
              horizontal: defaultPadding,
            ),
            child: Text(
              "Plot Summary",
              style: Theme.of(context).textTheme.headline5,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
            child: Text(
              movie.plot,
              style: const TextStyle(
                color: Color(0xFF737599),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
