import 'package:flutter/material.dart';
import 'package:nano/assets/colors/colors.dart';
import 'package:nano/widgets/focus/timer_range_picker.widget.dart';

class TimerDialogWidget extends StatefulWidget {
  const TimerDialogWidget({super.key});

  @override
  State<TimerDialogWidget> createState() => _TimerDialogWidgetState();
}

class _TimerDialogWidgetState extends State<TimerDialogWidget> {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: XColors.terrary,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
        side: BorderSide(
          color: XColors.lightGrey,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              children: [
                const Spacer(
                  flex: 2,
                ),
                const Text(
                  "Timer Settings",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Spacer(),
                IconButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  icon: const Icon(
                    Icons.close_rounded,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            const TimerRangePickerWidget(),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: TextButton(
                onPressed: () {
                  setState(() {
                    Navigator.of(context).pop();
                  });
                },
                style: ButtonStyle(
                  backgroundColor: WidgetStateProperty.all(
                    XColors.primary.withOpacity(.8),
                  ),
                  minimumSize: WidgetStateProperty.all(
                    const Size(200, 50),
                  ),
                  shape: WidgetStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(6),
                    ),
                  ),
                ),
                child: const Text(
                  "Save",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
