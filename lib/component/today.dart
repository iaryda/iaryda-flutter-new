import 'package:flutter/material.dart';

class Today extends StatelessWidget {
  final DateTime selectedDay;
  final int scheduleCount;
  const Today({
    required this.selectedDay,
    required this.scheduleCount,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(child: Text('hi'));
  }
}
