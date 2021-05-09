import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:web_site/helps/constants.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: kPrimaryColor,
        scaffoldBackgroundColor: kBgColor,
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: TextButton.styleFrom(backgroundColor: kPrimaryColor),
        ),
        textTheme: TextTheme(
          bodyText1: TextStyle(color: kBodyTextColor),
          bodyText2: TextStyle(color: kBodyTextColor),
          headline5: TextStyle(color: kDarkBlackColor),
        ),
      ),
      home: MainScreen(),
    );
  }
}

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: 160,
          width: double.infinity,
          color: Colors.black87,
          child: Column(
            children: [
              // Top Header
              SizedBox(
                height: kDefaultVerticalPadding,
              ),
              _header()
              // Header Content
              _headerContent()
              // Body list
            ],
          ),
        ),
      ),
    );
  }
}

Widget _header() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      SizedBox(
        width: 30,
      ),
      Row(
        children: [
          Image.asset(
            "assets/images/logo.png",
            height: 40,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Text(
                  'Design',
                  style: TextStyle(
                      fontSize: 22.0,
                      color: Colors.white,
                      fontWeight: FontWeight.w900),
                ),
                SizedBox(
                  width: 4,
                ),
                Text(
                  'OK',
                  style: TextStyle(
                      fontSize: 22.0,
                      color: Colors.pinkAccent,
                      fontWeight: FontWeight.w900),
                ),
              ],
            ),
          )
        ],
      ),
      Spacer(
        flex: 2,
      ),
      _menuItem(name: 'Cases', isActive: false),
      _menuItem(name: 'Services', isActive: false),
      _menuItem(name: 'About Us', isActive: false),
      _menuItem(name: 'Careers', isActive: false),
      _menuItem(name: 'Blog', isActive: true),
      _menuItem(name: 'Contact', isActive: false),
      Spacer(
        flex: 2,
      ),
      Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SvgPicture.asset(
              "assets/icons/language.svg",
              color: Colors.white,
              height: 24.0,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SvgPicture.asset(
              "assets/icons/world.svg",
              color: Colors.white,
              height: 24.0,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SvgPicture.asset(
              "assets/icons/twitter.svg",
              color: Colors.white,
              height: 24.0,
            ),
          ),
          SizedBox(
            width: 10,
          ),
          RaisedButton(
            color: kColorAccent,
            shape: RoundedRectangleBorder(
                borderRadius:
                    new BorderRadius.circular(kDefaultVerticalPadding)),
            onPressed: () => {},
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 6.0, horizontal: 10.0),
              child: Text(
                "Let's Talk",
                style: TextStyle(
                    fontSize: 18.0,
                    color: Colors.white,
                    fontWeight: FontWeight.w400),
              ),
            ),
          ),
          SizedBox(
            width: 50,
          ),
        ],
      )
    ],
  );
}

Widget _menuItem({name: String, isActive: bool}) {
  return InkWell(
    onTap: ()=>{

    },
    onHover: (value) => {
      isActive = value
    },
    highlightColor: Colors.pink[200],
    splashColor: Colors.pink[100],
    child: Container(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Text(
              name,
              style: TextStyle(
                color: Colors.white,
                fontSize: 16.0,
              ),
            ),
          ),
          SizedBox(
            height: 3,
          ),
          if (isActive)
            Container(
              height: 2,
              width: 50,
              decoration: BoxDecoration(color: kColorAccent),
              child: Text(''),
            )
        ],
      ),
    ),
  );
}


Widget _headerContent(){
  return Container(
    child: Column(
      children: [
        Text('Welcome to Our Blog'),
        Text('')
      ],
    ),
  )
}