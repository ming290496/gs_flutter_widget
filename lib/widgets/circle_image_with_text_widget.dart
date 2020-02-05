import 'package:flutter/material.dart';
import 'package:gs_flutter_widget/constants/gs_style.dart';

class CircleImageWithTextWidget {
  static Widget build(
      BuildContext context, String title, String image, Function onClick) {
    return GestureDetector(
      onTap: () {
        onClick();
      },
      child: Container(
        alignment: Alignment.topCenter,
        margin: EdgeInsets.only(left: 5, right: 5),
        width: MediaQuery.of(context).size.width * 0.25 - 5 - 10,
        child: Column(
          children: <Widget>[
            Container(
              height: MediaQuery.of(context).size.width * 0.25 - 5 - 10,
              child: CircleAvatar(
                backgroundImage: NetworkImage(image),
                radius: MediaQuery.of(context).size.width * 0.25 - 5 - 10,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              title,
              style: GSStyle.contentTitleStyle,
            ),
          ],
        ),
      ),
    );
  }
}
