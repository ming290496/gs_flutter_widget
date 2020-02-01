[![Pub](https://img.shields.io/badge/Pub-0.1.1-orange.svg?style=flat-square)](https://pub.dev/packages/gs_flutter_widget)

# gs_flutter_package
A Flutter Package to create reusable widget for list. Simple and easy to use.

<img src="https://github.com/ming290496/gs_flutter_widget/blob/master/example/img/1.jpeg?raw=true" width="200"/>

## Usage

Add the ListView in your screen. Then add GSFlutterWidget inside children attribute.
<br/>
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