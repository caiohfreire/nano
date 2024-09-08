import 'package:flutter/material.dart';
import 'package:flutter_calendar_week/flutter_calendar_week.dart';
import 'package:intl/intl.dart';

import 'package:nano/assets/colors/colors.dart';

class CalendarWidget extends StatelessWidget {
  const CalendarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return CalendarWeek(
      controller: CalendarWeekController(),
      showMonth: true,
      backgroundColor: XColors.terrary,
      dateBackgroundColor: XColors.grayAccent,
      dayShapeBorder: BoxShape.circle,
      dateStyle: const TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.w800,
      ),
      dayOfWeekStyle: const TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.w700,
      ),
      pressedDateBackgroundColor: XColors.primary,
      todayDateStyle: const TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.w700,
      ),
      weekendsStyle: TextStyle(
        color: XColors.primary,
        fontWeight: FontWeight.w700,
      ),
      todayBackgroundColor: XColors.primary.withOpacity(0.5),
      pressedDateStyle: const TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.w700,
      ),
      minDate: DateTime.now().add(
        const Duration(days: -365),
      ),
      maxDate: DateTime.now().add(
        const Duration(days: 365),
      ),
      onDatePressed: (DateTime datetime) {
        // Do something
      },
      onDateLongPressed: (DateTime datetime) {
        // Do something
      },
      onWeekChanged: () {
        // Do something
      },
      monthViewBuilder: (DateTime time) => Align(
        alignment: FractionalOffset.center,
        child: Container(
          margin: const EdgeInsets.symmetric(vertical: 4),
          child: Text(
            DateFormat.yMMMM().format(time),
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 16,
              color: Colors.white,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
      decorations: [
        DecorationItem(
          decorationAlignment: FractionalOffset.bottomRight,
          date: DateTime.now(),
        ),
        DecorationItem(
          date: DateTime.now().add(const Duration(days: 3)),
        ),
      ],
    );
  }
}
