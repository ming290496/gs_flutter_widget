library gs_flutter_widget;

import 'package:flutter/material.dart';
import 'package:gs_flutter_widget/widgets/circle_image_with_text_widget.dart';
import 'package:gs_flutter_widget/widgets/rounded_square_image_widget.dart';
import 'package:gs_flutter_widget/widgets/section_header_widget.dart';

class GSFlutterWidget {
  static Widget circleImageWithText(
    BuildContext context, {
    @required String headerTitle,
    Function() onHeaderClicked,
    bool headerShowIcon,
    @required int itemCount,
    @required String Function(int index) itemTitle,
    @required String Function(int index) itemImage,
    @required Function(int index) onItemClicked,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        SectionHeaderWidget.build(
            headerTitle, onHeaderClicked, headerShowIcon ?? true),
        Container(
          height: MediaQuery.of(context).size.width * 0.25 + 5 + 30,
          child: ListView.builder(
            padding: EdgeInsets.all(10),
            itemCount: itemCount,
            itemBuilder: (context, index) {
              return CircleImageWithTextWidget.build(
                  context, itemTitle(index), itemImage(index), () {
                onItemClicked(index);
              });
            },
            scrollDirection: Axis.horizontal,
          ),
        ),
      ],
    );
  }

  static Widget roundedSquareImage(
    BuildContext context, {
    @required String headerTitle,
    Function() onHeaderClicked,
    bool headerShowIcon,
    @required int itemCount,
    @required String Function(int index) itemImage,
    @required Function(int index) onItemClicked,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        SectionHeaderWidget.build(
            headerTitle, onHeaderClicked, headerShowIcon ?? true),
        Container(
          height: 170,
          child: ListView.builder(
            padding: EdgeInsets.all(10),
            itemCount: itemCount,
            itemBuilder: (context, index) {
              return RoundedSquareImageWidget.build(context, itemImage(index));
            },
            scrollDirection: Axis.horizontal,
          ),
        ),
      ],
    );
  }
}
