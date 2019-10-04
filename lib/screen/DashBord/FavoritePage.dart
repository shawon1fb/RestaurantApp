import 'package:flutter/material.dart';
import 'package:feather_icons_flutter/feather_icons_flutter.dart';
import 'package:restaurant_app/component/BottomBar.dart';
import 'package:restaurant_app/Constant/constant.dart';
import 'package:restaurant_app/component/FoodItemCard.dart';

class FavoritePage extends StatefulWidget {
  @override
  _FavoritePageState createState() => _FavoritePageState();
}

class _FavoritePageState extends State<FavoritePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFFFFF),
      appBar: AppBar(
        backgroundColor: Theme.of(context).backgroundColor,
        elevation: 0.0,
        title: Text(
          '15 Nearby Restaurants',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(10),
          child: ListView(
            children: <Widget>[
              FoodItemCard(
                imagePath: 'images/berger.png',
                Title: 'Burger Quen',
                Subtitle: 'Restaurant-Fastfood',
                RatingPoint: '4.5',
                Rating: '(129 rating)',
                isopen: 'Open',
              ),
              FoodItemCard(
                imagePath: 'images/berger.png',
                Title: 'Burger Quen',
                Subtitle: 'Restaurant-Fastfood-Chinese',
                RatingPoint: '4.5',
                Rating: '(129 rating)',
                isopen: 'Open',
              ),
              FoodItemCard(
                imagePath: 'images/berger.png',
                Title: 'Burger Quen',
                Subtitle: 'Restaurant-Fastfood-Chinese',
                RatingPoint: '4.5',
                Rating: '(129 rating)',
                isopen: 'Open',
              ),
              FoodItemCard(
                imagePath: 'images/berger.png',
                Title: 'Burger Quen',
                Subtitle: 'Restaurant-Fastfood-Chinese',
                RatingPoint: '4.5',
                Rating: '(129 rating)',
                isopen: 'Open',
              ),
              FoodItemCard(
                imagePath: 'images/berger.png',
                Title: 'Burger Quen',
                Subtitle: 'Restaurant-Fastfood-Chinese',
                RatingPoint: '4.5',
                Rating: '(129 rating)',
                isopen: 'Open',
              ),
              FoodItemCard(
                imagePath: 'images/berger.png',
                Title: 'Burger Quen',
                Subtitle: 'Restaurant-Fastfood-Chinese',
                RatingPoint: '4.5',
                Rating: '(129 rating)',
                isopen: 'Open',
              ),
              FoodItemCard(
                imagePath: 'images/berger.png',
                Title: 'Burger Quen',
                Subtitle: 'Restaurant-Fastfood-Chinese',
                RatingPoint: '4.5',
                Rating: '(129 rating)',
                isopen: 'Open',
              ),
              FoodItemCard(
                imagePath: 'images/berger.png',
                Title: 'Burger Quen',
                Subtitle: 'Restaurant-Fastfood-Chinese',
                RatingPoint: '4.5',
                Rating: '(129 rating)',
                isopen: 'Open',
              ),
              FoodItemCard(
                imagePath: 'images/berger.png',
                Title: 'Burger Quen',
                Subtitle: 'Restaurant-Fastfood-Chinese',
                RatingPoint: '4.5',
                Rating: '(129 rating)',
                isopen: 'Open',
              ),
              FoodItemCard(
                imagePath: 'images/berger.png',
                Title: 'Burger Quen',
                Subtitle: 'Restaurant-Fastfood-Chinese',
                RatingPoint: '4.5',
                Rating: '(129 rating)',
                isopen: 'Open',
              ),
            ],
          ),
        ),
      ),
     /* bottomNavigationBar: BottomBar(
        Home: () {
          Navigator.pop(context);
        },
        Favorite: () {},
      ),*/
    );
  }
}
