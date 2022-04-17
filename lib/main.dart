import 'package:flutter/material.dart';
import 'package:flutter_bilibili/pages/feed_page.dart';
import 'package:flutter_bilibili/pages/main_page.dart';
import 'package:flutter_bilibili/pages/mine_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _index = 0;
  List<Widget> _body = [
    MainPage(),
    FeedPage(),
    MinePage()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _index,
        children: _body
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "主页"),
          BottomNavigationBarItem(icon: Icon(Icons.apps_outlined), label: "动态"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "我的"),
        ],
        iconSize: 30,
        currentIndex: _index,
        onTap: (v) {
          setState(() {
            _index = v;
          });
        },
      ),
    );
  }
}
