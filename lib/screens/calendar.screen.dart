import 'package:flutter/material.dart';
import 'package:nano/assets/colors/colors.dart';
import 'package:nano/widgets/calendar/calendar.widget.dart';
import 'package:nano/widgets/calendar/switch_calendar.widget.dart';

class Calendar extends StatefulWidget {
  const Calendar({super.key});

  @override
  _CalendarState createState() => _CalendarState();
}

class _CalendarState extends State<Calendar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: XColors.background,
      body: Column(
        children: [
          const SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24, vertical: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Calendar",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 125,
                  child: CalendarWidget(),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
            child: Container(
              decoration: BoxDecoration(
                color: XColors.terrary,
                borderRadius: BorderRadius.circular(6),
              ),
              child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 16),
                child: SwitchCalendar(),
              ),
            ),
          ),
          const Spacer(
            flex: 2,
          ),
          Column(
            children: [
              Image.asset(
                "assets/empty-list.png",
                width: 250,
                height: 250,
                fit: BoxFit.cover,
              ),
              const SizedBox(height: 20),
              const Text(
                "You don't have any tasks yet",
                style: TextStyle(color: Colors.white, fontSize: 18),
              )
            ],
          ),
          const Spacer(
            flex: 5,
          ),
        ],
      ),
    );
  }
}
