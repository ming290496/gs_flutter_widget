import 'package:flutter/material.dart';
import 'package:gs_flutter_widget/constants/gs_style.dart';

class RoundedSquareImageWithAuthorWidget {
  static Widget build(BuildContext context, String image, String authorImage,
      String created, String authorName, Function onClick) {
    return GestureDetector(
      onTap: () {
        onClick();
      },
      child: Container(
        margin: EdgeInsets.only(left: 5, right: 5),
        width: MediaQuery.of(context).size.width * 0.40,
        child: Container(
          padding: EdgeInsets.all(10.0),
          alignment: Alignment.bottomCenter,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                  image: NetworkImage(image), fit: BoxFit.cover)),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              CircleAvatar(
                backgroundImage: NetworkImage(authorImage),
              ),
              SizedBox(
                width: 10,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Text(authorName,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: GSStyle.contentTitleWhiteWithShadowStyle),
                    Text(
                      created,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: GSStyle.contentSubTitleWhiteWithShadowStyle,
                    ),
                  ],
                ),
              )
            ],
          ),
          height: 150,
        ),
      ),
    );
  }
}
