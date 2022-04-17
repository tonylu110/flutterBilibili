import 'package:flutter/material.dart';
import 'package:flutter_bilibili/pages/search.dart';

class ToSearch extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: MediaQuery.of(context).size.width - 30,
          height: 40,
          margin: EdgeInsets.all(15.0),
          child: OutlineButton.icon(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) {
                  return SearchPage();
                },
                fullscreenDialog: true)
              );
            },
            icon: Icon(
              Icons.search,
              color: Colors.blue,
            ),
            label: Text(
              "搜索",
              style: TextStyle(
                fontSize: 18,
                color: Colors.blue
              ),
            ),
            borderSide: BorderSide(
              color: Colors.blue,
              style: BorderStyle.solid,
              width: 1.8,
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8)
            ),
          ),
        ),
      ],
    );
  }
}
