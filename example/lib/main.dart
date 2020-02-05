import 'package:example/example_model.dart';
import 'package:flutter/material.dart';
import 'package:gs_flutter_widget/gs_flutter_widget.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

// ignore: must_be_immutable
class MyHomePage extends StatelessWidget {
  List<ExampleModel> items = [
    ExampleModel(
        title: 'First',
        subtitle: 'This is First',
        desc: 'This is First desc',
        category: 'First',
        image:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcRw9qqSQiOrG4HzzhV5oTNpN47bwEX5R2NkfTtrywR0gt9zNsEA',
        authorImage:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSPieJWfhQsrvyxFduWradsTYy4QsPlux0V2t_6coMKDr0kIY_k',
        authorName: 'First Author',
        created: '26 Days Ago',
        type: 'First Type',
        rate: '4.5',
        reviewer: '1234'),
    ExampleModel(
        title: 'Second',
        subtitle: 'This is Second',
        desc: 'This is Second desc',
        category: 'Second',
        image:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcRw9qqSQiOrG4HzzhV5oTNpN47bwEX5R2NkfTtrywR0gt9zNsEA',
        authorImage:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSPieJWfhQsrvyxFduWradsTYy4QsPlux0V2t_6coMKDr0kIY_k',
        authorName: 'Second Author',
        created: '26 Days Ago',
        type: 'Second Type',
        rate: '4.5',
        reviewer: '1234'),
    ExampleModel(
        title: 'Third',
        subtitle: 'This is Third',
        desc: 'This is Third desc',
        category: 'Third',
        image:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcRw9qqSQiOrG4HzzhV5oTNpN47bwEX5R2NkfTtrywR0gt9zNsEA',
        authorImage:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSPieJWfhQsrvyxFduWradsTYy4QsPlux0V2t_6coMKDr0kIY_k',
        authorName: 'Third Author',
        created: '26 Days Ago',
        type: 'Third Type',
        rate: '4.5',
        reviewer: '1234'),
    ExampleModel(
        title: 'Fourth',
        subtitle: 'This is Fourth',
        desc: 'This is Fourth desc',
        category: 'Fourth',
        image:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcRw9qqSQiOrG4HzzhV5oTNpN47bwEX5R2NkfTtrywR0gt9zNsEA',
        authorImage:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSPieJWfhQsrvyxFduWradsTYy4QsPlux0V2t_6coMKDr0kIY_k',
        authorName: 'Fourth Author',
        created: '26 Days Ago',
        type: 'Fourth Type',
        rate: '4.5',
        reviewer: '1234'),
    ExampleModel(
        title: 'Fifth',
        subtitle: 'This is Fifth',
        desc: 'This is Fifth desc',
        category: 'Fifth',
        image:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcRw9qqSQiOrG4HzzhV5oTNpN47bwEX5R2NkfTtrywR0gt9zNsEA',
        authorImage:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSPieJWfhQsrvyxFduWradsTYy4QsPlux0V2t_6coMKDr0kIY_k',
        authorName: 'Fifth Author',
        created: '26 Days Ago',
        type: 'Fifth Type',
        rate: '4.5',
        reviewer: '1234'),
    ExampleModel(
        title: 'Sixth',
        subtitle: 'This is Sixth',
        desc: 'This is Sixth desc',
        category: 'Sixth',
        image:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcRw9qqSQiOrG4HzzhV5oTNpN47bwEX5R2NkfTtrywR0gt9zNsEA',
        authorImage:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSPieJWfhQsrvyxFduWradsTYy4QsPlux0V2t_6coMKDr0kIY_k',
        authorName: 'Sixth Author',
        created: '26 Days Ago',
        type: 'Sixth Type',
        rate: '4.5',
        reviewer: '1234'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GS Flutter Widget'),
      ),
      backgroundColor: Color(0xFFFAFAFC),
      body: ListView(
        padding: EdgeInsets.only(bottom: 50),
        children: <Widget>[
          GSFlutterWidget.circleImageWithText(
            context,
            headerTitle: 'Circle Image With Text',
            headerShowIcon: false,
            onHeaderClicked: () {
              print('Header Clicked');
            },
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
            onHeaderClicked: () {
              print('Header Clicked');
            },
            itemCount: items.length,
            itemImage: (index) {
              return items[index].image;
            },
            onItemClicked: (index) {
              print(items[index].title);
            },
          ),
          GSFlutterWidget.roundedSquareImageWithAuthor(
            context,
            headerTitle: 'Rounded Square Img With Author',
            headerShowIcon: true,
            onHeaderClicked: () {
              print('Header Clicked');
            },
            itemCount: items.length,
            itemImage: (index) {
              return items[index].image;
            },
            onItemClicked: (index) {
              print(items[index].title);
            },
            authorName: (index) {
              return items[index].authorName;
            },
            authorImage: (index) {
              return items[index].authorImage;
            },
            created: (index) {
              return items[index].created;
            },
          ),
          GSFlutterWidget.roundedSquareImageWithButton(
            context,
            headerTitle: 'Rounded Square Img With Button',
            headerShowIcon: true,
            onHeaderClicked: () {
              print('Header Clicked');
            },
            itemCount: items.length,
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
          GSFlutterWidget.squareCircleWithButton(
            context,
            headerTitle: 'Square Circle With Button',
            headerShowIcon: true,
            onHeaderClicked: () {
              print('Header Clicked');
            },
            itemCount: items.length,
            itemTitle: (index) {
              return items[index].title;
            },
            itemSubTitle: (index) {
              return items[index].subtitle;
            },
            itemImage: (index) {
              return items[index].image;
            },
            onItemClicked: (index) {
              print(items[index].title);
            },
          ),
          GSFlutterWidget.squareWithRating(
            context,
            headerTitle: 'Square With Rating',
            headerShowIcon: true,
            onHeaderClicked: () {
              print('Header Clicked');
            },
            itemCount: items.length,
            itemTitle: (index) {
              return items[index].title;
            },
            itemImage: (index) {
              return items[index].image;
            },
            itemRate: (index) {
              return items[index].rate;
            },
            itemType: (index) {
              return items[index].type;
            },
            itemReviewer: (index) {
              return items[index].reviewer;
            },
            onItemClicked: (index) {
              print(items[index].title);
            },
          ),
        ],
      ),
    );
  }
}
