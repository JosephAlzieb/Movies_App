import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../config/constants.dart';

AppBar getAppBar(){
  return AppBar(
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
  );
}