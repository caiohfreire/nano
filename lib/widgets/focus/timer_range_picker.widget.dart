import 'package:flutter/material.dart';
import 'package:duration_time_picker/duration_time_picker.dart';
import 'package:nano/assets/colors/colors.dart';

class TimerRangePickerWidget extends StatefulWidget {
  const TimerRangePickerWidget({super.key});

  @override
  _TimerRangePickerWidgetState createState() => _TimerRangePickerWidgetState();
}

class _TimerRangePickerWidgetState extends State<TimerRangePickerWidget> {
  Duration _durationMin = Duration.zero;

  @override
  Widget build(BuildContext context) {
    return DurationTimePicker(
      duration: _durationMin,
      backgroundColor: XColors.background,
      labelStyle: const TextStyle(
        color: Colors.white,
        fontSize: 24,
        fontWeight: FontWeight.w600,
      ),
      baseUnit: BaseUnit.minute,
      progressColor: XColors.primary,
      onChange: (val) {
        setState(
          () => _durationMin = val,
        );
      },
    );
  }
}
