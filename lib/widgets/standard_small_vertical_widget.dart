import 'package:flutter/material.dart';
import 'package:gs_flutter_widget/constants/gs_color.dart';
import 'package:gs_flutter_widget/constants/gs_style.dart';

class StandardSmallVertical {
  static Widget build(BuildContext context, String title, String image,
      String authorName, Function onClick) {
    return GestureDetector(
      onTap: () {
        onClick();
      },
      child: Container(
        height: 110,
        margin: EdgeInsets.only(left: 5, right: 5),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(10.0),
              child: Row(
                children: <Widget>[
                  ClipRRect(
                    borderRadius: new BorderRadius.circular(10.0),
                    child: Container(
                      width: 70,
                      height: 70,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage(image), fit: BoxFit.cover),
                        color: GSColor.placeholderImageColor,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          authorName,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: GSStyle.contentTitleStyle,
                        ),
                        Text(
                          title,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: GSStyle.contentSubTitleStyle,
                        ),
                      ],
                    ),
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
