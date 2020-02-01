import 'package:flutter/material.dart';

class RoundedSquareImageWidget {
  static Widget build(BuildContext context, String image) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        margin: EdgeInsets.only(left: 5, right: 5),
        width: MediaQuery.of(context).size.width * 0.28,
        child: Container(
          decoration: BoxDecoration(
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
