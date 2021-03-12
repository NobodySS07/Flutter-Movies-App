import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;


// ignore: camel_case_types
class batMan extends StatefulWidget{
  @override
  _batMan  createState() => _batMan ();

}
// ignore: camel_case_types
class _batMan  extends State<batMan >{

  Map data;
  List userData;

  Future getData() async{
    http.Response response = await http.get("http://www.omdbapi.com/?s=batman&page=2&apikey=3750dc58");
    data = json.decode(response.body);
    setState(() {
      userData = data["Search"];
    });
  }

  @override
  void initState(){
    super.initState();
    getData();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BatMan Movies"),
        backgroundColor: Colors.green,
      ),
      body: ListView.builder(
        itemCount: userData == null ? 0: userData.length,
        itemBuilder: (BuildContext context, int index){
          return Card(color:Colors.black,
            child: Padding(
              padding: EdgeInsets.all(10),
          child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
              child: Row(
                children: <Widget>[
                  CircleAvatar(
                    backgroundImage: NetworkImage(userData[index]["Poster"]),radius: 50,
                  ),
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: Text("${userData[index]["Title"]}\n ${userData[index]["Year"]}",style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
            ),
          );
        },

      ),
    );
  }

}