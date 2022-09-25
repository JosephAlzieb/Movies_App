import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../config/constants.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          padding: const EdgeInsets.only(left: defaultPadding),
          icon: SvgPicture.asset("assets/icons/menu.svg"),
          onPressed: () {},
        ),
        actions: <Widget>[
          IconButton(
            padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
            icon: SvgPicture.asset("assets/icons/search.svg"),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
          ],
        ),
      ),
    );
  }
}

