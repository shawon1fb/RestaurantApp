import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:restaurant_app/Constant/constant.dart';
import 'package:restaurant_app/component/ItemsListCard.dart';
import 'package:restaurant_app/component/ReviewCard.dart';

class ReviewPage extends StatefulWidget {
  @override
  _ReviewPageState createState() => _ReviewPageState();
}

class _ReviewPageState extends State<ReviewPage> {
  String googleMapsApiKey = 'AIzaSyC0m1YZ3MVlKaDrattMQAlDLM7LsBV9Cm0';

  var globalPadding = 15.0;

  @override
  Widget build(BuildContext context) {
    var ScreenHight = MediaQuery.of(context).size.height;
    var ScreenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: <Widget>[
          Container(
            child: Container(
              height: ScreenHight * 0.2,
              width: double.infinity,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: FractionalOffset.topLeft,
                  end: FractionalOffset.bottomRight,
                  colors: [
                    Colors.black,
                    Colors.white10,
                  ],
                ),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  colorFilter: ColorFilter.mode(
                      Colors.black.withOpacity(0.3), BlendMode.colorBurn),
                  image: AssetImage(
                    'images/test2.png',
                  ),
                ),
              ),
              child: Stack(
                children: <Widget>[
                  Positioned(
                    left: ScreenWidth * 0.01,
                    top: ScreenHight * 0.2 - 58,
                    child: Text(
                      'Planet of the Grapes',
                      style: KRest_Name,
                    ),
                  ),
                  Positioned(
                    left: ScreenWidth * 0.01,
                    top: ScreenHight * 0.2 - 35,
                    child: Text(
                      'Restaurant Type - Thai or chinese',
                      style: KRest_Name_SubTitle,
                    ),
                  ),
                ],
              ),
            ),
          ),
          new Expanded(
              child: ListView(
            shrinkWrap: true,
            children: <Widget>[
              Container(
                color: Colors.blue,
                height: 200,
                width: double.infinity,
                child: new Image.network(
                  'https://i1.wp.com/www.cssscript.com/wp-content/uploads/2018/03/Simple-Location-Picker.png?fit=561%2C421&ssl=1',
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                padding: EdgeInsets.all(globalPadding),
                child: Row(
                  children: <Widget>[
                    Icon(
                      Icons.place,
                      color: Colors.red,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      '2/12, Pallabi, Mirpur, Dhaka 1216',
                      style: KRest_CommonText,
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: globalPadding),
                child: Row(
                  children: <Widget>[
                    Icon(
                      Icons.access_time,
                      color: Colors.red,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Open Now',
                      style: KRest_CommonText.copyWith(
                        color: Color(0xFF80E021),
                      ),
                    ),
                    Text(
                      ': 10am - 11pm',
                      style: KRest_CommonText,
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(globalPadding),
                child: Row(
                  children: <Widget>[
                    Icon(
                      Icons.phone,
                      color: Colors.red,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      '+880 1724-229793',
                      style: KRest_CommonText,
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(globalPadding),
                child: Text(
                  'Popular Items',
                  style: KRest_CommonTextBold,
                ),
              ),
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
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      width: ScreenWidth * 0.7,
                      child: FloatingActionButton.extended(
                        onPressed: () {},
                        backgroundColor: Colors.red,
                        label: Padding(
                          padding: EdgeInsets.only(
                              top: 50.0, bottom: 50.0, left: 50.0, right: 50.0),
                          child: Text(
                            'Write a review',
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Poppins Medium',
                              fontSize: 18.0,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(globalPadding),
                child: Row(
                  children: <Widget>[
                    Text(
                      'All reviews',
                      style: KRest_CommonTextBold,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      '(10)',
                      style: KRest_CommonText.copyWith(
                        color: Color(0xFFB4B4B4),
                        fontWeight: FontWeight.normal,
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: globalPadding),
                child: Column(
                  children: <Widget>[
                    ReviewCard(
                      UserName: 'alexandra daddario',
                      UserStatus: 'User',
                      Comment:
                      'Foods are tasty. I liked the sizzling brownie. Prices are added with service charge and vat. A bit expensive. Environment are okay. Decoration is beautiful. Staffs are professionally nice.',
                    ),
                    ReviewCard(
                      UserName: 'alexandra daddario',
                      UserStatus: 'User',
                      Comment:
                      'Foods are tasty. I liked the sizzling brownie. Prices are added with service charge and vat. A bit expensive. Environment are okay. Decoration is beautiful. Staffs are professionally nice.',
                    ),
                    ReviewCard(
                      UserName: 'alexandra daddario',
                      UserStatus: 'User',
                      Comment:
                      'Foods are tasty. I liked the sizzling brownie. Prices are added with service charge and vat. A bit expensive. Environment are okay. Decoration is beautiful. Staffs are professionally nice.',
                    ),
                  ],
                ),
              ),

              //Your content
            ],
          ))
        ],
      )),
    );
  }
}
