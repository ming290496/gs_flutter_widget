import 'package:flutter/material.dart';
import 'package:gs_flutter_widget/constants/gs_color.dart';
import 'package:gs_flutter_widget/constants/gs_style.dart';

class StandardSmallHorizontalWidget {
  static Widget build(BuildContext context, String title, String image,
      String authorName, Function onClick) {
    return GestureDetector(
      onTap: () {
        onClick();
      },
      child: Container(
        margin: EdgeInsets.only(left: 5, right: 5),
        width: MediaQuery.of(context).size.width * 0.40,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(image), fit: BoxFit.cover),
                color: GSColor.placeholderImageColor,
                borderRadius: BorderRadius.circular(10),
              ),
              height: 150,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              title,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: GSStyle.contentTitleStyle,
            ),
            SizedBox(
              height: 5,
            ),
            Expanded(
              child: Text(
                'by $authorName',
                style: GSStyle.contentSubTitleStyle,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
