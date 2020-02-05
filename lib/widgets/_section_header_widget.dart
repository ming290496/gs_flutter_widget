import 'package:flutter/material.dart';
import 'package:gs_flutter_widget/constants/gs_style.dart';

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
              style: GSStyle.headerTitleStyle,
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
