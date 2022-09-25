import 'package:flutter/material.dart';

import '../config/constants.dart';

class CategoryList extends StatefulWidget {
  const CategoryList({Key key}) : super(key: key);

  @override
  State<CategoryList> createState() => _CategoryListState();
}

class _CategoryListState extends State<CategoryList> {
  int selectedCategory = 0;
  List<String> categories = ["In Theater", "Box Office", "Coming Soon"];
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: defaultPadding/2),
      height: 60,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) => buildCategory(index, context),
      ),
    );
  }
  Padding buildCategory(int index, BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
      child: GestureDetector(
        onTap: () {
          setState(() {
            selectedCategory = index;
          });
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              categories[index],
              style: Theme
                  .of(context)
                  .textTheme
                  .headline5
                  .copyWith(
                fontWeight: FontWeight.w600,
                color: index == selectedCategory
                    ? textColor
                    : Colors.black.withOpacity(0.4),
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: defaultPadding / 2),
              height: 10,
              width: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: index == selectedCategory
                    ? secondaryColor
                    : Colors.transparent,
              ),
            )
          ],
        ),
      ),
    );
  }
}
