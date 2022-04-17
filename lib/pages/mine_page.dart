import 'package:flutter/material.dart';

class MinePage extends StatefulWidget {
  const MinePage({Key? key}) : super(key: key);

  @override
  State<MinePage> createState() => _MinePageState();
}

class _MinePageState extends State<MinePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "我的",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Text("mine")
        ],
      ),
    );
  }
}
