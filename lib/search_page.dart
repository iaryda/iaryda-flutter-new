import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      //화면 전체 어디를 누르던
      onTap: () {
        FocusScope.of(context).unfocus(); //textfield - unfocus
      },
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 100,
          title: const Text(
            '원하는 일기를 검색해보세요',
            style: TextStyle(color: Colors.black, fontSize: 24),
          ),
          automaticallyImplyLeading: false, //뒤로가기 없앰
          elevation: 0.0,
          backgroundColor: Colors.transparent,
          actions: [
            IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(Icons.home),
              color: Colors.black,
              iconSize: 30,
            ),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text('기분'),
            Container(
              child: Row(children: [
                Icon(Icons.face),
                Icon(Icons.face_2),
                Icon(Icons.face_3),
                Icon(Icons.face_4),
                Icon(Icons.face_5),
              ]),
            ),
            Text('내용'),
            Row(
              children: [
                Container(
                  height: 30,
                  decoration:
                      BoxDecoration(border: Border.all(color: Colors.black)),
                  child: Icon(Icons.search),
                ),
                Container(
                  width: 200,
                  height: 30,
                  decoration:
                      BoxDecoration(border: Border.all(color: Colors.black)),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText:
                          '일기 내용을 검색해보세요', //위치 설정, 키보드 한영눌렀을 때 바뀌게. 한글 키보드 기본.
                    ),
                  ),
                ),
              ],
            ),
            Container(
              decoration:
                  BoxDecoration(border: Border.all(color: Colors.black)),
              child: Text('검색'), //페이지이동 추가하기
            )
          ]),
        ),
      ),
    );
  }
}
