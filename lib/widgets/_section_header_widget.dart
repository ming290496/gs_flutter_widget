import 'package:flutter/material.dart';

class SectionHeaderWidget {
  static Widget build(String title, Function onClick, bool isShowIcon) {
    return Container(
      height: 50,
      alignment: Alignment.center,
      padding: EdgeInsets.only(left: 15, right: 15, top: 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Expanded(
            child: Text(
              title,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 20,
                fontFamily: 'Inter',
              ),
            ),
          ),
          Visibility(
            visible: isShowIcon ?? true,
            child: InkWell(
              onTap: onClick,
              child: Icon(
                Icons.keyboard_arrow_right,
                size: 30,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
