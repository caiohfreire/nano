import 'package:flutter/material.dart';

import 'package:nano/assets/colors/colors.dart';

class SwitchCalendar extends StatefulWidget {
  const SwitchCalendar({super.key});

  @override
  State<SwitchCalendar> createState() => _SwitchCalendarState();
}

bool isActive = true;

class _SwitchCalendarState extends State<SwitchCalendar> {
  @override
  Widget build(BuildContext context) {
    return Row(
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
              fontWeight: isActive ? FontWeight.w700 : FontWeight.w400,
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
              fontWeight: !isActive ? FontWeight.w700 : FontWeight.w400,
            ),
          ),
        ),
      ],
    );
  }
}
