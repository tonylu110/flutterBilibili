import 'package:flutter/material.dart';

import '../widget/main_list.dart';
import '../widget/to_search.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "首页",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [ToSearch(), MainList()],
      ),
    );
  }
}
