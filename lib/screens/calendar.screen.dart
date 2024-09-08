import 'package:flutter/material.dart';
import 'package:nano/assets/colors/colors.dart';
import 'package:nano/widgets/calendar.widget.dart';

class Calendar extends StatefulWidget {
  const Calendar({super.key});

  @override
  _CalendarState createState() => _CalendarState();
}

class _CalendarState extends State<Calendar> {
  bool isActive = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: XColors.background,
      body: Column(
        children: [
          const SafeArea(
            child: Padding(
              padding: EdgeInsets.all(0),
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
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
            child: Container(
              decoration: BoxDecoration(
                color: XColors.terrary,
                borderRadius: BorderRadius.circular(6),
              ),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    TextButton(
                      onPressed: () {
                        setState(() {
                          isActive = !isActive;
                        });
                      },
                      style: ButtonStyle(
                        backgroundColor: isActive
                            ? WidgetStateProperty.all(XColors.primary)
                            : WidgetStateProperty.all(Colors.transparent),
                        minimumSize: WidgetStateProperty.all(
                          const Size(150, 60),
                        ),
                        shape: WidgetStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(6),
                            side: isActive
                                ? BorderSide.none
                                : BorderSide(
                                    color: XColors.lightGrey,
                                    width: 1,
                                  ),
                          ),
                        ),
                      ),
                      child: Text(
                        "Today",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight:
                              isActive ? FontWeight.w700 : FontWeight.w400,
                        ),
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        setState(() {
                          isActive = !isActive;
                        });
                      },
                      style: ButtonStyle(
                        backgroundColor: !isActive
                            ? WidgetStateProperty.all(XColors.primary)
                            : WidgetStateProperty.all(Colors.transparent),
                        minimumSize: WidgetStateProperty.all(
                          const Size(150, 60),
                        ),
                        shape: WidgetStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(6),
                            side: !isActive
                                ? BorderSide.none
                                : BorderSide(
                                    color: XColors.lightGrey,
                                    width: 1,
                                  ),
                          ),
                        ),
                      ),
                      child: Text(
                        "Completed",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight:
                              !isActive ? FontWeight.w700 : FontWeight.w400,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
