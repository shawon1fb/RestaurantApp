import 'package:flutter/material.dart';
import 'package:feather_icons_flutter/feather_icons_flutter.dart';
import 'package:restaurant_app/CustomeLibrary/CustomeFlatButton.dart';
import 'package:restaurant_app/Constant/constant.dart';
import 'package:restaurant_app/screen/DashBord/Profile.dart';
import 'package:restaurant_app/screen/DashBord/SearchPage.dart';
import 'package:restaurant_app/screen/DashBord/ReviewPage.dart';

class BottomBar extends StatefulWidget {
  BottomBar({this.Home, this.Favorite});

  final Function Home, Favorite;

  @override
  _BottomBarState createState() =>
      _BottomBarState(Home: Home, Favorite: Favorite);
}

class _BottomBarState extends State<BottomBar> {
  _BottomBarState({this.Home, this.Favorite});

  double paddingg = 5.0;
  Color icon_color = Color(0xFF8F8D8D);
  final Function Home, Favorite;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.12,
      decoration: BoxDecoration(
        color: Colors.blue,
        gradient: LinearGradient(
          begin: FractionalOffset.bottomLeft,
          end: FractionalOffset.topRight,
          colors: <Color>[Colors.white, Colors.white10],
        ),
        borderRadius: BorderRadius.circular(11),
        boxShadow: [
          BoxShadow(color: Colors.yellow, offset: Offset(15.0, 15.0))
        ],
      ),
      child: Container(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Expanded(
              flex: 1,
              child: FlatButton(
                onPressed: Home,
                color: Colors.white,
                padding:
                    EdgeInsets.symmetric(horizontal: paddingg, vertical: 15.0),
                child: Column(
                  // Replace with a Row for horizontal icon + text
                  children: <Widget>[
                    Icon(
                      FeatherIcons.home,
                      color: icon_color,
                    ),
                    Text(
                      "Home",
                      style: ButtonBarTextStyle,
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: FlatButton(
                onPressed: Favorite,
                color: Colors.white,
                padding:
                    EdgeInsets.symmetric(horizontal: paddingg, vertical: 15.0),
                child: Column(
                  // Replace with a Row for horizontal icon + text
                  children: <Widget>[
                    Icon(
                      FeatherIcons.heart,
                      color: icon_color,
                    ),
                    Text(
                      "Favorite",
                      style: ButtonBarTextStyle,
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: FlatButton(
                onPressed: () => {   Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ReviewPage(),
                  ),
                )},
                color: Colors.white,
                padding:
                    EdgeInsets.symmetric(horizontal: paddingg, vertical: 15.0),
                child: Column(
                  // Replace with a Row for horizontal icon + text
                  children: <Widget>[
                    Icon(
                      FeatherIcons.bell,
                      color: icon_color,
                    ),
                    Text(
                      "Notification",
                      style: ButtonBarTextStyle,
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: FlatButton(
                onPressed: () => {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ProfilePage(),
                    ),
                  )
                },
                color: Colors.white,
                padding:
                    EdgeInsets.symmetric(horizontal: paddingg, vertical: 15.0),
                child: Column(
                  // Replace with a Row for horizontal icon + text
                  children: <Widget>[
                    Icon(
                      FeatherIcons.user,
                      color: icon_color,
                    ),
                    Text(
                      "Profile",
                      style: ButtonBarTextStyle,
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: FlatButton(
                onPressed: () => {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SearchPage(),
                    ),
                  )
                },
                color: Colors.white,
                padding:
                    EdgeInsets.symmetric(horizontal: paddingg, vertical: 15.0),
                child: Column(
                  // Replace with a Row for horizontal icon + text
                  children: <Widget>[
                    Icon(
                      FeatherIcons.search,
                      color: icon_color,
                    ),
                    Text(
                      "Search",
                      style: ButtonBarTextStyle,
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
