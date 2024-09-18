import 'package:flutter/material.dart';

class IconTextWidget extends StatelessWidget {
  final IconData icon;
  final String label;
  final Color? color;
  final bool rotateIcon;
  final VoidCallback onTap;

  const IconTextWidget({
    super.key,
    required this.icon,
    required this.label,
    required this.onTap,
    this.color,
    this.rotateIcon = false,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: Row(
          children: [
            Transform(
              alignment: Alignment.center,
              transform: Matrix4.rotationZ(rotateIcon ? 3.1416 : 0),
              child: Icon(
                icon,
                color: color ?? Colors.white,
              ),
            ),
            const SizedBox(width: 8),
            Text(
              label,
              style: TextStyle(
                color: color ?? Colors.white,
              ),
            ),
            const Spacer(),
            const Icon(
              Icons.keyboard_arrow_right_rounded,
              color: Colors.white,
            )
          ],
        ),
      ),
    );
  }
}
