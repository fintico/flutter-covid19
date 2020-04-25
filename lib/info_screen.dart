import 'package:flutter/material.dart';
import 'package:flutter_covid_app/constant.dart';
import 'package:flutter_covid_app/widgets/header.dart';
import 'package:flutter_covid_app/widgets/symthomp_card.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "Sintomas",
                  style: kTitleTextstyle,
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    SympthomCards(
                      image: "assets/images/headache.png",
                      title: "Dolor Cabeza",
                      isActive: true,
                    ),
                    SympthomCards(
                      image: "assets/images/caugh.png",
                      title: "Tos seca",
                    ),
                    SympthomCards(
                      image: "assets/images/fever.png",
                      title: "Fiebre",
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Como Prevenir",
                  style: kTitleTextstyle.copyWith(fontSize: 16),
                ),
                SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: 156,
                  child: Stack(
                    alignment: Alignment.centerLeft,
                    children: <Widget>[
                      Container(
                        height: 136,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                offset: Offset(0, 8),
                                blurRadius: 24,
                                color: kShadowColor,
                              ),
                            ]),
                      ),
                      Image.asset("assets/images/wash_hands.png"),
                      Positioned(
                        left: 136,
                        child: Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 20, vertical: 15),
                          width: MediaQuery.of(context).size.width - 170,
                          height: 136,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                "Lavate las manos",
                                style: kTitleTextstyle,
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "Desde que inicio Covid19 se ha comprobado que el lavado de manos ayuda.",
                                style: TextStyle(fontSize: 12),
                              ),
                              Align(
                                alignment: Alignment.bottomRight,
                                child: SvgPicture.asset(
                                    "assets/icons/forward.svg"),
                              )
                            ],
                          ),
                        ),
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
