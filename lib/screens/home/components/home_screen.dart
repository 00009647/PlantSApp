import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:plany_app/components/my_bottom_navbar.dart';
import 'package:plany_app/constants.dart';
import 'package:plany_app/screens/home/components/body.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: newMethod(),
      body: Body(),
      bottomNavigationBar: MyBottomNavBar(),
    );
  }

  AppBar newMethod() {
    return AppBar(
      elevation: 0,
      leading: IconButton(
        icon: SvgPicture.asset('assets/icons/menu.svg'),
        onPressed: () {},
      ),
    );
  }
}
