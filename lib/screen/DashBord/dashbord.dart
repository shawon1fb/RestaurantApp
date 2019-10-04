import 'dart:async';
import 'Mapview.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:restaurant_app/Service/Location.dart';
import 'package:geolocator/geolocator.dart';
import 'package:restaurant_app/component/BottomBar.dart';
import 'FavoritePage.dart';
import 'Profile.dart';
import 'SearchPage.dart';
import 'ReviewPage.dart';

class DashBoard extends StatefulWidget {
  @override
  _DashBoardState createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  PageController pageController;

  // final _controller = ScrollController();

  void JumpPage(int page) {
    pageController.jumpToPage(page);
    // _controller.jumpTo(page.toDouble());
  }

  Location location = new Location();

  void getLocation() {
    location.getCurrentLocation();
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getLocation();
    pageController = PageController();
  }

  void FavoriteButton() {
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => FavoritePage(),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: pageController,
        physics: NeverScrollableScrollPhysics(),
        children: <Widget>[
          ProfilePage(),
          SearchPage(),
          Mapview(
            location: location,
          ),
          FavoritePage(),
          ReviewPage(),
        ],
      ),
      bottomNavigationBar: BottomBar(
        Home: () => {JumpPage(0)},
        Favorite: () => {JumpPage(1)},
        Natification: () => {JumpPage(2)},
        profile: () => {JumpPage(3)},
        Searce: () => {JumpPage(4)},
      ),
    );
  }
}
