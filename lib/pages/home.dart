import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math';

class Home extends StatefulWidget{
  @override
  _Home createState() => _Home();

}

class _Home extends State<Home>{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text("Super hero Movies"),
            elevation: 0.3
        ),
        body: ListView(
          children: <Widget>[Container(

            child: Column(
              children: <Widget>[
                 Row ( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      IconButton(
                        icon: Image.asset('images/superman.png'),
                        iconSize: 170,
                        onPressed: () {
                          Navigator.pushNamed(context, '/superMan');
                        },
                      ),


                      IconButton(
                        icon: Image.asset('images/captAmerica.png'),
                        iconSize: 170,
                        onPressed: () {
                          Navigator.pushNamed(context, '/captAmerica');
                        },
                      ),
                    ]  ),

                Row ( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      IconButton(
                        icon: Image.asset('images/hulk.png'),
                        iconSize: 170,
                        onPressed: () {
                          Navigator.pushNamed(context, '/hulk');
                        },
                      ),


                      IconButton(
                        icon: Image.asset('images/Batman-logo.png'),
                        iconSize: 170,
                        onPressed: () {
                          Navigator.pushNamed(context, '/batMan');
                        },
                      ),
                    ]  ),
                Row ( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      IconButton(
                        icon: Image.asset('images/SpiderMan.png'),
                        iconSize: 170,
                        onPressed: () {
                          Navigator.pushNamed(context, '/spiderMan');
                        },
                      ),


                      IconButton(
                        icon: Image.asset('images/GOT.png'),
                        iconSize: 120,
                        onPressed: () {
                          Navigator.pushNamed(context, '/GOT');
                        },
                      ),
                    ]  ),

              ],
            ),

          ),
        ]

        )

    );
  }
  }




