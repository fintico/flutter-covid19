import 'package:flutter/material.dart';
import 'package:flutter_covid_app/constant.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PreventionCard extends StatelessWidget {
  final String image;
  final String title;
  final String description;

  const PreventionCard({
    Key key,
    this.image,
    this.title,
    this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: SizedBox(
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
            Image.asset(image),
            Positioned(
              left: 136,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                width: MediaQuery.of(context).size.width - 170,
                height: 136,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "$title",
                      style: kTitleTextstyle,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "$description",
                      style: TextStyle(fontSize: 12),
                    ),
                    Align(
                      alignment: Alignment.topRight,
                      child: SvgPicture.asset("assets/icons/forward.svg"),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
