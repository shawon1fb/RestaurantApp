import 'package:flutter/material.dart';
import 'package:feather_icons_flutter/feather_icons_flutter.dart';
import 'package:restaurant_app/component/BottomBar.dart';
import 'package:restaurant_app/Constant/constant.dart';
import 'package:restaurant_app/component/FoodItemCard.dart';
import '../../logic/Model_data/FoolItemList.dart';
import '../../logic/Model_data/FoodListGenerator.dart';

class FavoritePage extends StatefulWidget {
  @override
  _FavoritePageState createState() => _FavoritePageState();
}

class _FavoritePageState extends State<FavoritePage> {
  List<FoodItemCard> ListChilden;

  ListGenerator Generator = new ListGenerator();

  void GetChilden() {
    ListChilden = Generator.FoodItemCardGenerate();
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    GetChilden();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    ListChilden.clear();
  }

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
            children: ListChilden,
            /* <Widget>[
              FoodItemCard(
                imagePath: FoodList[0].imagePath,
                Title: FoodList[0].Title,
                Subtitle: FoodList[0].Subtitle,
                RatingPoint: FoodList[0].RatingPoint,
                Rating: FoodList[0].Rating,
                isopen: 'Open',
              ),
              FoodItemCard(
                imagePath: FoodList[1].imagePath,
                Title: FoodList[1].Title,
                Subtitle: FoodList[1].Subtitle,
                RatingPoint: FoodList[1].RatingPoint,
                Rating: FoodList[1].Rating,
                isopen: 'Open',
              ),
              FoodItemCard(
                imagePath: FoodList[2].imagePath,
                Title: FoodList[2].Title,
                Subtitle: FoodList[2].Subtitle,
                RatingPoint: FoodList[2].RatingPoint,
                Rating: FoodList[2].Rating,
                isopen: 'Open',
              ),
              FoodItemCard(
                imagePath: FoodList[3].imagePath,
                Title: FoodList[3].Title,
                Subtitle: FoodList[3].Subtitle,
                RatingPoint: FoodList[3].RatingPoint,
                Rating: FoodList[3].Rating,
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
            ],*/
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
