import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';
import 'package:iaryda_new/component/today.dart';
import 'package:iaryda_new/search_page.dart';

import 'component/calender.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        title: Text(
          '이어리다',
          style: TextStyle(color: Colors.black, fontSize: 30),
        ),
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const SearchPage()));
            },
            icon: Icon(Icons.search),
            color: Colors.black,
            iconSize: 30,
          ),
        ],
      ),
      body: Column(children: [
        Calendar(),
      ]),
    );
  }
}
