import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class ListBestSellers extends StatefulWidget {
  ListBestSellers({Key key}) : super(key: key);

  @override
  _BestSellersState createState() => _BestSellersState();
}

class _BestSellersState extends State<ListBestSellers> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        scrollDirection: Axis.vertical,
        primary: true,
        child: ListView(
          primary: false,
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          children: <Widget>[
            _showBook("assets/harry.jpg", " Harry Potter e o calice de Ouro",
                "J.K ROlling", "R\$30.00", "4.8", "294"),
            _showBook("assets/startup.jpg", "A Startup Enxuta", "Eric Riles",
                "R\$20.00", "4.9", "3492"),
            _showBook("assets/mogli.png", "The jungle Book", " Teriac Sala",
                "R\$15.00", "5.0", "30203"),
            _showBook("assets/jedi.png", "The Last Jedi", "Carol K ",
                "R\$28.00", "3.9", "3030"),
          ],
        ));
  }

  Widget _showBook(String image, String titulo, String autor, String valor,
      String nota, String qtd) {
    return Row(children: <Widget>[
      Stack(fit: StackFit.loose, children: <Widget>[
        Container(
          width: 80,
          height: 112,
          padding: EdgeInsets.all(10),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image(
              image: AssetImage(image),
              width: 80,
              height: 112,
              fit: BoxFit.fill, // use this
            ),
          ),
        ),
      ]),
      SizedBox(
        width: 10,
      ),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(
            height: 10,
          ),
          Container(
            width: 250,
            child: AutoSizeText(
              titulo,
              softWrap: true,
              maxLines: 2,
              style: TextStyle(fontSize: 15, color: Colors.white),
            ),
          ),
          SizedBox(height: 5),
          Text(
            autor,
            style: TextStyle(fontSize: 9, color: Colors.white70),
          ),
          SizedBox(height: 10),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                valor,
                style: TextStyle(color: Colors.white, fontSize: 15),
              ),
              SizedBox(
                width: 20,
              ),
              Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    IconButton(
                        icon: new Icon(Icons.star, color: Colors.yellow)),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(nota,
                          textAlign: TextAlign.left,
                          style: TextStyle(fontSize: 11, color: Colors.white)),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text('($qtd)',
                        style: TextStyle(fontSize: 11, color: Colors.white60)),
                  ]),
            ],
          )
        ],
      )
    ]);
  }
}
