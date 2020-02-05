[![Pub](https://img.shields.io/pub/v/gs_flutter_widget)](https://pub.dev/packages/gs_flutter_widget)
[![size](https://img.shields.io/github/repo-size/ming290496/gs_flutter_widget?label=size)](https://pub.dev/packages/gs_flutter_widget)
[![license](https://img.shields.io/github/license/ming290496/gs_flutter_widget)](https://github.com/ming290496/gs_flutter_widget/blob/master/LICENSE)

# gs_flutter_widget
A Flutter Package to create reusable widget for list. Simple and easy to use.

<p float="left">
    <img src="https://github.com/ming290496/gs_flutter_widget/blob/master/example/img/4.jpeg?raw=true" width="200"/>
    <img src="https://github.com/ming290496/gs_flutter_widget/blob/master/example/img/3.jpeg?raw=true" width="200"/>
</p>


## Usage

Add the ListView in your screen. Then add GSFlutterWidget inside children attribute.

[Full example](https://github.com/ming290496/gs_flutter_widget/tree/master/example)

 ```dart

  @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: Text('GS Flutter Widget'),
        ),
        body: ListView(
          children: <Widget>[
            GSFlutterWidget.circleImageWithText(
              context,
              headerTitle: 'Circle Image With Text',
              headerShowIcon: false,
              itemCount: 4,
              itemTitle: (index) {
                return items[index].title;
              },
              itemImage: (index) {
                return items[index].image;
              },
              onItemClicked: (index) {
                print(items[index].title);
              },
            ),
            GSFlutterWidget.roundedSquareImage(
              context,
              headerTitle: 'Rounded Square Image',
              headerShowIcon: true,
              itemCount: items.length,
              itemImage: (index) {
                return items[index].image;
              },
              onItemClicked: (index) {
                print(items[index].title);
              },
            ),
          ],
        ),
      );
    }

 ```