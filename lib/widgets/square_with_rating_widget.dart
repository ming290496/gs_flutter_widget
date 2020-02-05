import 'package:flutter/material.dart';
import 'package:gs_flutter_widget/constants/gs_color.dart';
import 'package:gs_flutter_widget/constants/gs_style.dart';

class SquareWithRatingWidget {
  static Widget build(BuildContext context, String title, String image,
      String rate, String reviewer, String type, Function onClick) {
    return GestureDetector(
      onTap: () {
        onClick();
      },
      child: Card(
        child: Container(
          padding: EdgeInsets.all(10.0),
          margin: EdgeInsets.only(left: 5, right: 5),
          width: MediaQuery.of(context).size.width * 0.6,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  ClipRRect(
                    borderRadius: new BorderRadius.circular(10.0),
                    child: Container(
                      width: 70,
                      height: 70,
                      decoration: BoxDecoration(
                        color: GSColor.placeholderImageColor,
                        image: DecorationImage(
                            image: NetworkImage(image), fit: BoxFit.cover),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          type.toUpperCase(),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: GSStyle.categoryTitleStyle,
                        ),
                        Text(
                          title,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style:
                              GSStyle.contentTitleStyle.copyWith(fontSize: 16),
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              rate,
                              style: GSStyle.contentSubTitleStyle,
                            ),
                            Icon(
                              Icons.star,
                              size: 15,
                              color: Colors.orange,
                            ),
                            Text(
                              '($reviewer)',
                              style: GSStyle.contentSubTitleStyle,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Divider(
                thickness: 1,
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text('Check Ins'),
                  Icon(Icons.keyboard_arrow_right),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
