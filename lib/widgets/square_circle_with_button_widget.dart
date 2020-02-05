import 'package:flutter/material.dart';
import 'package:gs_flutter_widget/constants/gs_color.dart';
import 'package:gs_flutter_widget/constants/gs_style.dart';

class SquareCircleWithButtonWidget {
  static Widget build(BuildContext context, String title, String subTitle,
      String image, Function onClick) {
    return GestureDetector(
      onTap: () {
        onClick();
      },
      child: Card(
        child: Container(
          padding: EdgeInsets.all(10.0),
          margin: EdgeInsets.only(left: 5, right: 5),
          width: MediaQuery.of(context).size.width * 0.35,
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                backgroundColor: GSColor.placeholderImageColor,
                backgroundImage: NetworkImage(image),
                radius: 40,
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                title,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.center,
                style: GSStyle.contentTitleStyle,
              ),
              Text(
                subTitle,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.center,
                style: GSStyle.contentSubTitleStyle,
              ),
              SizedBox(
                height: 10,
              ),
              FlatButton(
                onPressed: () {
                  onClick();
                },
                color: Colors.blue,
                textColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(10.0),
                ),
                child: Text(
                  'DETAIL',
                  textAlign: TextAlign.center,
                  style: GSStyle.smallTextButtonStyle,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
