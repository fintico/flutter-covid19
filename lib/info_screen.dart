import 'package:flutter/material.dart';
import 'package:flutter_covid_app/constant.dart';
import 'package:flutter_covid_app/widgets/header.dart';
import 'package:flutter_covid_app/widgets/prevention.dart';
import 'package:flutter_covid_app/widgets/symthomp_card.dart';
import 'package:flutter_svg/flutter_svg.dart';

class InfoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
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
                    height: 10,
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
                    height: 10,
                  ),
                  Text(
                    "Como Prevenir",
                    style: kTitleTextstyle.copyWith(fontSize: 16),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  PreventionCard(
                    image: 'assets/images/wash_hands.png',
                    description:
                        "Lavado de manos con agua y con jabón por mas de 20 minutos según la OMS.",
                    title: 'Lavar las Manos',
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  PreventionCard(
                    image: 'assets/images/wear_mask.png',
                    description:
                        "Cubrirse la boca con una mascarilla minimiza el riesgo de contagio según la OMS.",
                    title: 'Usar Mascarrilla',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
