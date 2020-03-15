import 'package:bookly_desafio/bestsellers.dart';
import 'package:bookly_desafio/mybooks.dart';

import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  Home_State createState() => Home_State();
}

class Home_State extends State<Home> {
  TextEditingController textBusca = new TextEditingController();
  static const Color fundo = Color(0x100B20);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: fundo,
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: 30,
              ),
              Container(
                color: fundo,
                child: Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: TextFormField(
                    keyboardType: TextInputType.number,
                    controller: textBusca,
                    textAlign: TextAlign.start,
                    style: TextStyle(
                        decorationColor: Colors.white,
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                        fontSize: 13),
                    decoration: InputDecoration(
                      hintText: "Bookly",
                      hintStyle: TextStyle(color: Colors.white),
                      labelStyle: TextStyle(color: Colors.white),
                      border: InputBorder.none,
                      suffixIcon: Padding(
                        padding: EdgeInsets.all(0),
                        child: Icon(
                          Icons.search,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    onEditingComplete: () {
                      FocusScope.of(context).requestFocus(new FocusNode());
                    },
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              MyBooks(),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: EdgeInsets.only(left: 10),
                child: Text(
                  "Best Seller",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                      fontFamily: "Montserrat"),
                ),
              ),
              ListBestSellers()
            ],
          ),
        ));
  }
}
