import 'package:flutter/material.dart';
import 'package:plany_app/constants.dart';
import 'package:plany_app/screens/home/components/reccomended_plants.dart';
// import 'package:plany_app/constants.dart';
import 'package:plany_app/screens/home/components/titlewith_morebtn.dart';
// import 'package:flutter_svg/svg.dart';
// import 'package:plany_app/constants.dart';

import 'feautured_plants.dart';
import 'header_withsearchbox.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          HeaderWithSearchBox(size: size),
          TitlewithMoreBtn(title: 'Recommended', press: () {}),
          RecommendsPlant(),
          TitlewithMoreBtn(
            title: 'Feautured Plants',
            press: () {},
          ),
          FeauturedPlants(),
          SizedBox(height: kDefaultPadding),
        ],
      ),
    );
  }
}
