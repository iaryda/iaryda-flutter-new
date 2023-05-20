import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class Calendar extends StatefulWidget {
  const Calendar({Key? key}) : super(key: key);

  @override
  State<Calendar> createState() => _CalendarState();
}

class _CalendarState extends State<Calendar> {
  DateTime? selectedDay;
  DateTime focusedDay = DateTime.now();

  @override
  Widget build(BuildContext context) {
    final defaultBoxDeco = BoxDecoration(
      color: Colors.grey[200],
    );
    final defaultTextStyle = TextStyle(fontWeight: FontWeight.w400);

    return TableCalendar(
      locale: 'ko_KR', //한국어로 패치 -> intel로
      focusedDay:
          focusedDay, //화면에 보여져야하는 날짜. 변수로 둬서 화면에 보이는 다른 달의 날짜(31) 누르면 이동하게함
      firstDay: DateTime(1800),
      lastDay: DateTime(3000),
      headerStyle: HeaderStyle(
          formatButtonVisible: false,
          titleCentered: true,
          titleTextStyle: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 16.0,
          )),
      calendarStyle: CalendarStyle(
        isTodayHighlighted: false, //오늘의 날짜 하이라이트 기본값 지워줌
        defaultDecoration: defaultBoxDeco, //평일만 회색박스
        weekendDecoration: defaultBoxDeco, //주말만 회색박스
        //selectedDecoration: BoxDecoration(),//선택한 날짜 꾸미기
        outsideDecoration: BoxDecoration(shape: BoxShape.circle),
        defaultTextStyle: defaultTextStyle,
        weekendTextStyle: defaultTextStyle,
      ),

      onDaySelected: (DateTime selectedDay, DateTime focusedDay) {
        //날짜 선택될 때
        setState(() {
          this.selectedDay = selectedDay;
          this.focusedDay = selectedDay; //이전 달 31일 눌렀을 때 이전 달로 화면 이동하게
        });
      },
      selectedDayPredicate: (DateTime date) {
        if (selectedDay == null) {
          //선택 없을 때
          return false;
        }
        return date.year == selectedDay!.year &&
            date.month == selectedDay!.month &&
            date.day == selectedDay!.day;
      },
    );
  }
}
