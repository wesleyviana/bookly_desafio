import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class MyBooks extends StatefulWidget {
  MyBooks({Key key}) : super(key: key);

  @override
  MyBooksList createState() => MyBooksList();
}

class MyBooksList extends State<MyBooks> {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        height: 200,
        padding: EdgeInsets.only(left: 10),
        child: ListView(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          padding: EdgeInsets.all(3),
          children: <Widget>[
            _showImageBook("assets/mogli.png"),
            _showImageBook("assets/japa.png"),
            _showImageBook("assets/jedi.png"),
          ],
        ));
  }

  Widget _showImageBook(String image) {
    return Stack(fit: StackFit.loose, children: <Widget>[
      Container(
        width: 130,
        height: 194,
        padding: EdgeInsets.all(10),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Image(
            image: AssetImage(image),
            width: 130,
            height: 194,
            fit: BoxFit.fill, // use this
          ),
        ),
      ),
      Container(
        alignment: Alignment.bottomLeft,
        margin: EdgeInsets.only(left: 75),
        child: Padding(
          padding: EdgeInsets.only(right: 10),
          child: IconButton(
            icon: new Icon(Icons.play_circle_filled,
                size: 30, color: Colors.white),
            onPressed: () => Navigator.of(context).pop(),
          ),
        ),
      ),
    ]);
  }
}
