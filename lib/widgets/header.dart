import 'package:flutter/material.dart';
import 'package:flutter_covid_app/constant.dart';
import 'package:flutter_covid_app/widgets/clipper.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AppHeader extends StatelessWidget {
  const AppHeader({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: MyClipper(),
      child: Container(
        padding: EdgeInsets.only(left: 40, top: 50, right: 20),
        height: 350,
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
                Color(0xFF3383CD),
                Color(0xFF11249F),
              ]),
          image: DecorationImage(
            image: AssetImage("assets/images/virus.png"),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Align(
              alignment: Alignment.topRight,
              child: Image.asset("assets/icons/menu.svg"),
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(
              child: Stack(
                children: <Widget>[
                  SvgPicture.asset(
                    "assets/icons/Drcorona.svg",
                    width: 230,
                    fit: BoxFit.fitWidth,
                    alignment: Alignment.topCenter,
                  ),
                  Positioned(
                    top: 20,
                    left: 150,
                    child: Text(
                      "Solo Quedate \nen casa HDP.",
                      style: kHeadingTextStyle.copyWith(color: Colors.white),
                    ),
                  ),
                  Container(),
                  // aca le tuvimos que poner un container xq si no se ocultaba el texto a la mitad
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
