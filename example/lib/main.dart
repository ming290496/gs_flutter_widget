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
    ),
    ExampleModel(
      title: 'Second',
      subtitle: 'This is Second',
      desc: 'This is Second desc',
      category: 'Second',
      image:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcRw9qqSQiOrG4HzzhV5oTNpN47bwEX5R2NkfTtrywR0gt9zNsEA',
    ),
    ExampleModel(
      title: 'Third',
      subtitle: 'This is Third',
      desc: 'This is Third desc',
      category: 'Third',
      image:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcRw9qqSQiOrG4HzzhV5oTNpN47bwEX5R2NkfTtrywR0gt9zNsEA',
    ),
    ExampleModel(
      title: 'Fourth',
      subtitle: 'This is Fourth',
      desc: 'This is Fourth desc',
      category: 'Fourth',
      image:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcRw9qqSQiOrG4HzzhV5oTNpN47bwEX5R2NkfTtrywR0gt9zNsEA',
    ),
    ExampleModel(
      title: 'Fifth',
      subtitle: 'This is Fifth',
      desc: 'This is Fifth desc',
      category: 'Fifth',
      image:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcRw9qqSQiOrG4HzzhV5oTNpN47bwEX5R2NkfTtrywR0gt9zNsEA',
    ),
    ExampleModel(
      title: 'Sixth',
      subtitle: 'This is Sixth',
      desc: 'This is Sixth desc',
      category: 'Sixth',
      image:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcRw9qqSQiOrG4HzzhV5oTNpN47bwEX5R2NkfTtrywR0gt9zNsEA',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Example'),
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
}
