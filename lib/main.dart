import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iaryda_new/routes/app_pages.dart';
//import 'package:iaryda_new/search_page.dart';

import 'component/calender.dart';

void main() {
  runApp(const HomePage());
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Iaryda',
      home: Scaffold(
          appBar: AppBar(
            title: const Text('이어리다'),
            backgroundColor: Colors.transparent,
            actions: [
              IconButton(
                  onPressed: ()=> Get.toNamed(Routes.SEARCH),
                  icon: const Icon(Icons.search)
              )
            ],
          ),
          body: Column(
            children: [
              Calendar(),
            ],

          ))
    );
  }
}
