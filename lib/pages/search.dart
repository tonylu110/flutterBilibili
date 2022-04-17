import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "搜索",
          style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
      ),
    );
  }
}
