import 'package:flutter/material.dart';

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
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                subTitle,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 13,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              FlatButton(
                onPressed: () {
                  onClick();
                },
                color: Color(0xFF5E6FD5),
                textColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(10.0),
                ),
                child: Text(
                  'DETAIL',
                  textAlign: TextAlign.center,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
