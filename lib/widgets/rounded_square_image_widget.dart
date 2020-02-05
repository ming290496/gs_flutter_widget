import 'package:flutter/material.dart';
import 'package:gs_flutter_widget/constants/gs_color.dart';

class RoundedSquareImageWidget {
  static Widget build(BuildContext context, String image, Function onClick) {
    return GestureDetector(
      onTap: () {
        onClick();
      },
      child: Container(
        margin: EdgeInsets.only(left: 5, right: 5),
        width: MediaQuery.of(context).size.width * 0.28,
        child: Container(
          decoration: BoxDecoration(
            color: GSColor.placeholderImageColor,
            image: DecorationImage(
              image: NetworkImage(image),
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.circular(10),
          ),
          height: 150,
        ),
      ),
    );
  }
}
