import 'package:flutter/material.dart';
import 'package:plany_app/constants.dart';
import 'package:plany_app/screens/details/components/title_and_pric.dart';
// import 'package:flutter_svg/svg.dart';
// import 'package:plany_app/constants.dart';

// import 'icon_card.dart';
import 'image_and_icon.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          ImageandCards(size: size),
          TitleandPrice(
            title: 'Angelica',
            country: 'Russia',
            price: 440,
          ),
          SizedBox(
            height: kDefaultPadding / 4,
          ),
          Row(
            children: [
              SizedBox(
                height: 84,
                width: size.width / 2,
                child: FlatButton(
                  shape: RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.only(topRight: Radius.circular(30))),
                  onPressed: () {},
                  child: Text(
                    'Buy now',
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                  color: kPrimaryColor,
                ),
              ),
              Expanded(
                  child:
                      FlatButton(onPressed: () {}, child: Text('Description'))),
            ],
          ),
        ],
      ),
    );
  }
}
