import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:restaurant_app/component/ItemsListCard.dart';
import 'package:restaurant_app/Constant/constant.dart';
import 'package:restaurant_app/component/FoodItemCard.dart';
import 'package:restaurant_app/component/BottomBar.dart';
import 'package:restaurant_app/component/search_TextField.dart';
import 'package:restaurant_app/component/PriceRange_TextField.dart';

import '../../logic/Model_data/FoodListGenerator.dart';

import '../../logic/Model_data/FoolItemList.dart';

class SearchPage extends StatefulWidget {
  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  List<ItemsListCard> ItemListCard_Childen;
  List<FoodItemCard> ListChilden;
  ListGenerator Generator = new ListGenerator();

  void OnItemSelect(String Tag) {
    setState(() {
      ListChilden = Generator.OnTagSelecte(Tag);
    });
  }

  List<ItemsListCard> ItemsListCardGenator() {
    List<ItemsListCard> list = new List();
    for (Food_Tag i in Tag_List) {
      list.add(
        ItemsListCard(
          SvgImagePath: i.ImagePath,
          ItemName: i.TagName,
          onPress: () {
            OnItemSelect(i.TagName);
          },
        ),
      );
    }

    return list;
  }

  void GetChilden() {
    ListChilden = Generator.FoodItemCardGenerate();
    ItemListCard_Childen = ItemsListCardGenator();
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
    print("distroyed ====================>>>>");
    ItemListCard_Childen.clear();
    ListChilden.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white10,
        elevation: 0,
        iconTheme: IconThemeData(
          color: Color(0xFFFF4646),
        ),
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
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(5),
                    ),
                    color: Color(0xFFEDEDED),
                  ),
                  child: Container(
                    padding: EdgeInsets.all(10),
                    child: Column(
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              'Price Range',
                              style: KPriceRangeStyle,
                            ),
                            SizedBox(
                              width: 3,
                            ),
                            Text(
                              'Taka',
                              style: KTakaStyle,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Expanded(
                              child: Container(
                                height: 35,
                                width: 105,
                                child: PriceRangeTextField(),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                height: 35,
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Text(
                                    'to',
                                    style: KTakaStyle,
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                height: 35,
                                width: 105,
                                child: PriceRangeTextField(),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
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
                                  children:
                                      /* <Widget>[
                                        ItemsListCard(
                                          SvgImagePath: 'images/wheat.svg',
                                          ItemName: 'item',
                                          onPress: () => OnItemSelect('Burger'),
                                        ),
                                      ] +*/
                                      ItemListCard_Childen,
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
                          ] +
                          ListChilden,
                    ),
                  ),
                ),
              ],
            )),
      ),
      /*bottomNavigationBar: BottomBar(
        Home: () {
          Navigator.pop(context);
        },
        Favorite: () {},
      ),*/
    );
  }
}
