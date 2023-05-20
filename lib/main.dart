import 'package:flutter/material.dart';
//import 'package:iaryda_new/routes/app_pages.dart';
//import 'package:iaryda_new/search_page.dart';
import 'package:intl/date_symbol_data_local.dart';

import 'component/calender.dart';
import 'home_screen.dart';

void main() async {
  WidgetsFlutterBinding
      .ensureInitialized(); //초기화하는 flutter framework가 준비될 때까지 기다려줌. runApp에 자동으로 실행되는데, runApp실행 전에 우리는 initial그걸 쓸거니까 추가해줘야함.

  await initializeDateFormatting(); //intl pkg 안에 있는 언어 정보를 쓸 수 있게 해줌

  runApp(MaterialApp(
    home: HomeScreen(),
  ));
}
