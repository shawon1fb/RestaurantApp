import 'package:flutter/material.dart';
import 'package:feather_icons_flutter/feather_icons_flutter.dart';
import 'screen/Onboarding/Onboarding_Page.dart';
import 'package:restaurant_app/Constant/constant.dart';
import 'package:restaurant_app/Constant/OnBosrdPageList.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'screen/Auth/AuthPage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        backgroundColor: Colors.white,
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool isvisable = false;
  int currentIndexPage = 0;

  void setCurrentPage(int index) {
    setState(() {
      currentIndexPage = index;
      print(currentIndexPage);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).copyWith().backgroundColor,
      body: SafeArea(
          child: Container(
        padding: EdgeInsets.only(left: 33.0, right: 33.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(
              flex: 2,
              child: FlatButton(
                onPressed: null,
                child: Align(
                  alignment: Alignment.topRight,
                  child: Padding(
                    padding: const EdgeInsets.only(right: 0.0, top: 10.0),
                    child: Text(
                      'Skip',
                      style: KskipButton,
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 6,
              child: Container(
                  child: PageView(
                controller: PageController(),
                children: OnBoardingpageList,
                onPageChanged: (index) {
                  setCurrentPage(index);

                  if (index == 2) {
                    setState(() {
                      isvisable = true;
                    });
                  } else {
                    setState(() {
                      isvisable = false;
                    });
                  }
                },
              )),
            ),
            Expanded(
              flex: 0,
              child: Visibility(
                visible: isvisable,
                child: FloatingActionButton.extended(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Auth()),
                    );
                  },
                  backgroundColor: Colors.red,
                  label: Padding(
                    padding: EdgeInsets.only(top: 50.0,bottom: 50.0,left: 50.0,right: 50.0),
                    child: Text(
                      'Get Started',
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Poppins Medium',
                        fontSize: 18.0,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                  width: double.infinity,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Padding(
                          padding: const EdgeInsets.only(
                            bottom: 20.0,
                          ),
                          child: DotsIndicator(
                            dotsCount: OnBoardingpageList.length,
                            position: currentIndexPage,
                            decorator: DotsDecorator(
                              color: Colors.grey,
                              activeColor: Colors.redAccent,
                            ),
                          ),
                        ),
                      ),
                      /* Align(
                            alignment: Alignment.bottomRight,
                            child: Visibility(
                              visible: (!isvisable),
                              child: Padding(
                                padding:
                                const EdgeInsets.only(bottom: 20.0, right: 32.0),
                                child: Text(
                                  'Next',
                                  style: KskipButton,
                                ),
                              ),
                            ),
                          ),*/
                    ],
                  )),
            ),
          ],
        ),
      )),
      floatingActionButton: Visibility(
        visible: !isvisable,
        child: FloatingActionButton(
          onPressed: null,
          disabledElevation: 0.0,
          elevation: 0.0,
          backgroundColor: Theme.of(context).copyWith().backgroundColor,
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Text(
              'Next',
              style: KskipButton,
            ),
          ),
        ),
      ),
    );
  }
}
