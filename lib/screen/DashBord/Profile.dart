import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:restaurant_app/component/ItemsListCard.dart';
import 'package:restaurant_app/Constant/constant.dart';
import 'package:restaurant_app/component/FoodItemCard.dart';
import 'package:restaurant_app/component/BottomBar.dart';
import 'package:restaurant_app/component/search_TextField.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white10,
        elevation: 0,
        iconTheme: IconThemeData(color: Color(0xFFFF4646),),
      ),
      body: SafeArea(
        child: Container(
            padding: EdgeInsets.all(10),
            child: Column(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  width: double.infinity,
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'What do you want to eat?',
                      style: KSearchTitle,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 0, vertical: 10),
                  child: Search_TextFeild(),
                ),

                Expanded(
                  child: Container(
                    child: ListView(
                      children: <Widget>[
                        Container(
                            height: 160,
                            width: double.infinity,
                            padding: EdgeInsets.all(0),
                            child: ListView(
                              scrollDirection: Axis.horizontal,
                              children: <Widget>[
                                ItemsListCard(
                                  SvgImagePath: 'images/wheat.svg',
                                  ItemName: 'item1',
                                ),
                                ItemsListCard(
                                  SvgImagePath: 'images/SVG/burger.svg',
                                  ItemName: 'Burger',
                                ),
                                ItemsListCard(
                                  SvgImagePath: 'images/wheat.svg',
                                  ItemName: 'item1',
                                ),
                                ItemsListCard(
                                  SvgImagePath: 'images/SVG/burger.svg',
                                  ItemName: 'Burger',
                                ),
                                ItemsListCard(
                                  SvgImagePath: 'images/wheat.svg',
                                  ItemName: 'item1',
                                ),
                                ItemsListCard(
                                  SvgImagePath: 'images/SVG/burger.svg',
                                  ItemName: 'Burger',
                                ),
                              ],
                            )),
                        SizedBox(
                          height: 1,
                        ),
                        Container(
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              'Search results',
                              style: KSearch_resultsStyle,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
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
              ],
            )),
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
