import 'package:flutter/material.dart';
import 'package:nano/assets/colors/colors.dart';
import 'package:circular_countdown_timer/circular_countdown_timer.dart';

class TimerWidget extends StatefulWidget {
  final bool isActive;
  final CountDownController controller;

  const TimerWidget({
    super.key,
    required this.isActive,
    required this.controller,
  });

  @override
  State<TimerWidget> createState() => _TimerWidgetState();
}

class _TimerWidgetState extends State<TimerWidget> {
  @override
  void didUpdateWidget(TimerWidget oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.isActive) {
      widget.controller.start();
    } else {
      widget.controller.reset();
    }
  }

  @override
  Widget build(BuildContext context) {
    return CircularCountDownTimer(
      duration: 60,
      initialDuration: 0,
      controller: widget.controller,
      width: MediaQuery.of(context).size.width / 2,
      height: MediaQuery.of(context).size.height / 3,
      ringColor: XColors.terrary,
      fillColor: XColors.primary,
      backgroundColor: XColors.secondary,
      strokeWidth: 14.0,
      strokeCap: StrokeCap.round,
      textStyle: const TextStyle(
        fontSize: 33.0,
        color: Colors.white,
        fontWeight: FontWeight.bold,
      ),
      textAlign: TextAlign.center,
      textFormat: CountdownTextFormat.HH_MM_SS,
      isReverse: false,
      isTimerTextShown: true,
      autoStart: false,
      onStart: () {
        debugPrint('Countdown Started');
      },
      onComplete: () {
        debugPrint('Countdown Ended');
      },
    );
  }
}
