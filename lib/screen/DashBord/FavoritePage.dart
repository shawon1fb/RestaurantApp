import 'package:flutter/material.dart';
import 'package:feather_icons_flutter/feather_icons_flutter.dart';
import 'package:restaurant_app/component/BottomBar.dart';

class FavoritePage extends StatefulWidget {
  @override
  _FavoritePageState createState() => _FavoritePageState();
}

class _FavoritePageState extends State<FavoritePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '15 Nearby Restaurants',
        ),
      ),
      body: SafeArea(
          child: Column(
        children: <Widget>[
          Card(
            child: Row(
              children: <Widget>[
                Expanded(
                  flex: 2,
                  child: Container(
                    padding: EdgeInsets.all(30.0),
                    child: Image.asset(
                      'images/on_boading_page1.png',
                    ),
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text('Burger Quen'),
                      Text('Restaurant-Fastfood-Chinese'),
                    ],
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Column(
                    children: <Widget>[
                      IconButton(
                          icon: Icon(
                            FeatherIcons.heart,
                            color: Colors.red,
                          ),
                          onPressed: null),
                      Text('open'),
                    ],
                  ),
                ),
              ],
            ),
          ),

          Card(
            child: Row(
              children: <Widget>[
                Expanded(
                  flex: 2,
                  child: Container(
                    padding: EdgeInsets.all(30.0),
                    child: Image.asset(
                      'images/on_boading_page1.png',
                    ),
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text('Burger Quen'),
                      Text('Restaurant-Fastfood-Chinese'),
                    ],
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Column(
                    children: <Widget>[
                      IconButton(
                          icon: Icon(
                            FeatherIcons.heart,
                            color: Colors.red,
                          ),
                          onPressed: null),
                      Text('open'),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Card(
            child: Row(
              children: <Widget>[
                Expanded(
                  flex: 2,
                  child: Container(
                    padding: EdgeInsets.all(30.0),
                    child: Image.asset(
                      'images/on_boading_page1.png',
                    ),
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text('Burger Quen'),
                      Text('Restaurant-Fastfood-Chinese'),
                    ],
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Column(
                    children: <Widget>[
                      IconButton(
                          icon: Icon(
                            FeatherIcons.heart,
                            color: Colors.red,
                          ),
                          onPressed: null),
                      Text('open'),
                    ],
                  ),
                ),
              ],
            ),
          ),




        ],
      )),
      bottomNavigationBar: BottomBar(
        Home: () {
          Navigator.pop(context);
        },
        Favorite: () {},
      ),
    );
  }
}
