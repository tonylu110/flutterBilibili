import 'package:flutter/material.dart';

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
    for (var i = 0; i < 10; i++) {
      list.add({
        "age": 10 + i,
        "name": "lu" + i.toString()
      });
    }
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
                    ListTile(
                      title: Text(e["name"].toString()),
                      subtitle: Text(e["age"].toString()),
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
      print("future");
    });
  }
}
