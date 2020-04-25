import 'package:flutter/material.dart';
import 'package:flutter_covid_app/constant.dart';
import 'package:flutter_covid_app/info_screen.dart';
import 'package:flutter_covid_app/widgets/clipper.dart';
import 'package:flutter_covid_app/widgets/counter.dart';
import 'package:flutter_covid_app/widgets/header.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Covid 19",
      theme: ThemeData(
          scaffoldBackgroundColor: kBackgroundColor,
          fontFamily: 'Poppins',
          textTheme: TextTheme(bodyText1: TextStyle(color: kBodyTextColor))),
      home: InfoScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          AppHeader(image: "assets/icons/Drcorona.svg", textTop: "Quedate", textBottom: "en casa!!",),
          Container(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            margin: EdgeInsets.symmetric(horizontal: 20),
            height: 60,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(25),
              border: Border.all(color: Color(0xFFE5E5E5)),
            ),
            child: Row(
              children: <Widget>[
                SvgPicture.asset("assets/icons/maps-and-flags.svg"),
                SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: DropdownButton(
                    isExpanded: true,
                    underline: SizedBox(),
                    value: "Indonesia",
                    icon: SvgPicture.asset("assets/icons/dropdown.svg"),
                    items: [
                      'Indonesia',
                      'Bangladesh',
                      'United Sates',
                      'Japan',
                    ].map<DropdownMenuItem<String>>((String value) {
                      print(value);
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                    onChanged: (value) {},
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    RichText(
                      text: TextSpan(children: [
                        TextSpan(
                            text: 'Case Update \n', style: kTitleTextstyle),
                        TextSpan(
                          text: 'Newest update today at this time',
                          style: TextStyle(color: kTextLightColor),
                        ),
                      ]),
                    ),
                    Spacer(),
                    Text(
                      "See details",
                      style: TextStyle(
                          color: kPrimaryColor, fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(0, 4),
                        blurRadius: 30,
                        color: kShadowColor,
                      ),
                    ],
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Counter(
                        title: "Infected",
                        color: kInfectedColor,
                        number: 200,
                      ),
                      Counter(
                        title: "Deaths",
                        color: kDeathColor,
                        number: 450,
                      ),
                      Counter(
                        title: "Recovered",
                        color: kRecovercolor,
                        number: 10,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      "Spread of Virus",
                      style: kTitleTextstyle,
                    ),
                    Text(
                      "See details",
                      style: TextStyle(
                        color: kPrimaryColor,
                        fontWeight: FontWeight.w600,
                      ),
                    )
                  ],
                ),
                Container(
                  child: Image.asset(
                    'assets/icons/map.svg',
                  ),
                  height: 100,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.transparent,
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(0, 10),
                        blurRadius: 30,
                        color: kShadowColor,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
