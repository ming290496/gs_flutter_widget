import 'package:flutter/material.dart';

class RoundedSquareImageWithButtonWidget {
  static Widget build(
      BuildContext context, String title, String image, Function onClick) {
    final textShadow = Shadow(
      blurRadius: 2.0,
      color: Colors.black,
      offset: Offset(1.0, 1.0),
    );
    return GestureDetector(
      onTap: () {
        onClick();
      },
      child: Container(
        margin: EdgeInsets.only(left: 5, right: 5),
        width: MediaQuery.of(context).size.width * 0.40,
        child: Container(
          padding: EdgeInsets.only(left: 10, right: 10, top: 20, bottom: 20),
          alignment: Alignment.center,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                  image: NetworkImage(image), fit: BoxFit.cover)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Text(
                title,
                textAlign: TextAlign.center,
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Inter',
                    color: Colors.white,
                    shadows: [textShadow]),
              ),
              RaisedButton(
                onPressed: () {
                  onClick();
                },
                color: Colors.white,
                textColor: Colors.black,
                shape: RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(10.0),
                ),
                child: Text(
                  'LIHAT DETAIL',
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
          height: 150,
        ),
      ),
    );
  }
}