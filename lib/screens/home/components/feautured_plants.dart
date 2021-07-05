import 'package:flutter/material.dart';

import '../../../constants.dart';

class FeauturedPlants extends StatelessWidget {
  const FeauturedPlants({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          FeauturedPlantCard(
            image: 'assets/images/bottom_img_1.png',
            press: () {},
          ),
          FeauturedPlantCard(
            image: 'assets/images/bottom_img_2.png',
            press: () {},
          ),
        ],
      ),
    );
  }
}

class FeauturedPlantCard extends StatelessWidget {
  const FeauturedPlantCard({
    Key key,
    this.image,
    this.press,
  }) : super(key: key);

  final String image;
  final Function press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: press,
      child: Container(
        margin: EdgeInsets.only(
            left: kDefaultPadding,
            top: kDefaultPadding / 2,
            bottom: kDefaultPadding / 2),
        height: 185,
        width: size.width * 0.8,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(image),
          ),
        ),
      ),
    );
  }
}
