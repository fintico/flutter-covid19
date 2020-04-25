import 'package:flutter/material.dart';
import 'package:flutter_covid_app/constant.dart';
import 'package:flutter_covid_app/widgets/header.dart';

class InfoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          AppHeader(
            image: "assets/icons/coronadr.svg",
            textTop: "Conoce el",
            textBottom: "Covid19",
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "Sintomas",
                  style: kTitleTextstyle,
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                                offset: Offset(0, 10),
                                blurRadius: 20,
                                color: kActiveShadowColor),
                          ]),
                      child: Column(
                        children: <Widget>[
                          Image.asset("assets/images/headache.png", height: 90,),
                          Text(
                            "Dolor Cabeza",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 10),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
