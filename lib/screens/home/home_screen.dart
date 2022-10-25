import 'package:flutter/material.dart';
import 'package:movies_app/components/app_bar.dart';
import 'package:movies_app/components/genres.dart';
import 'package:movies_app/components/movies_view.dart';
import 'package:movies_app/config/constants.dart';

import '../../components/category_list.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: getAppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            CategoryList(),
            Genres(genres: genres),
            MoviesView()
          ],
        ),
      ),
    );
  }
}

