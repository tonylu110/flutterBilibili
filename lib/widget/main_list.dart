import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class MainList extends StatefulWidget {
  @override
  State<MainList> createState() => _MainListState();
}

class _MainListState extends State<MainList> {
  List<Map> list = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _getList();
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Scrollbar(
        child: RefreshIndicator(
          child: GridView(
            padding: EdgeInsets.symmetric(horizontal: 10),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
            ),
            children: list.map((e) {
              return Card(
                margin: EdgeInsets.all(5),
                child: Column(
                  children: [
                    AspectRatio(
                      aspectRatio: 16/10,
                      child: Image.network(e["pic"].toString(),fit: BoxFit.cover,),
                    ),
                    ListTile(
                      leading: ClipOval(
                        child: Image.network(e["owner"]["face"],fit: BoxFit.cover,height: 40, width: 40,),
                      ),
                      title: Text(e["title"].toString(),maxLines: 1,),
                      subtitle: Text(e["owner"]["name"].toString(),maxLines: 1,),
                    )
                  ],
                ),
              );
            }).toList()
          ),
          onRefresh: _onRefresh,
        ),
    ));
  }

  Future _onRefresh() async {
    await Future.delayed(Duration(seconds: 1),() {
      setState(() {
        list = [];
      });
      _getList();
    });
  }

  _getList() async {
    var url = Uri.parse("https://www.bilibili.com/index/ding.json");
    var response = await http.get(url);
    if (response.statusCode == 200) {
      Map vlistm = json.decode(response.body)["douga"];
      List<Map> vlistl = [];
      for (var i = 0; i < vlistm.length; i++) {
        vlistl.add(vlistm[i.toString()]);
      }
      setState(() {
        list = vlistl;
      });
    }
  }
}
