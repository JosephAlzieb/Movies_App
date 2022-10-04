import 'package:flutter/material.dart';
import 'package:movies_app/models/movie.dart';

import '../config/constants.dart';

class TitleAndDuration extends StatelessWidget {
  final Movie movie;
  const TitleAndDuration({this.movie,Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(defaultPadding),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  movie.title,
                  style: Theme.of(context).textTheme.headline5,
                ),
                const SizedBox(height: defaultPadding / 2),
                Row(
                  children: <Widget>[
                    Text(
                      '${movie.year}',
                      style: const TextStyle(color: textLightColor),
                    ),
                    const SizedBox(width: defaultPadding),
                    const Text(
                      "PG-13",
                      style: TextStyle(color: textLightColor),
                    ),
                    const SizedBox(width: defaultPadding),
                    const Text(
                      "2h 32min",
                      style: TextStyle(color: textLightColor),
                    ),
                  ],
                )
              ],
            ),
          ),
          SizedBox(
            height: 64,
            width: 64,
            child: MaterialButton(
              onPressed: () {},
              color: secondaryColor,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              child: const Icon(
                Icons.add,
                size: 28,
                color: Colors.white,
              ),
            ),
          )
        ],
      ),
    );
  }
}
