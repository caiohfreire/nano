import 'package:flutter/material.dart';
import 'package:msh_checkbox/msh_checkbox.dart';
import 'package:nano/assets/colors/colors.dart';

class TaskWidget extends StatefulWidget {
  final bool isChecked;
  final String title;
  final String date;
  final String category;
  final int priority;
  final Color color;
  final IconData icon;
  final Color iconColor;
  final Function(bool)? onChanged;

  const TaskWidget({
    super.key,
    this.isChecked = false,
    required this.title,
    required this.date,
    required this.category,
    required this.priority,
    required this.color,
    required this.icon,
    required this.iconColor,
    this.onChanged,
  });

  @override
  State<TaskWidget> createState() => _TaskWidgetState();
}

class _TaskWidgetState extends State<TaskWidget> {
  bool _isChecked = false;

  bool isLightColor(Color color) {
    double luminance = color.computeLuminance();
    return luminance > 0.4;
  }

  @override
  Widget build(BuildContext context) {
    Color textColor = isLightColor(widget.color) ? Colors.black : Colors.white;

    return Container(
      width: 500,
      height: 100,
      decoration: BoxDecoration(
        color: XColors.terrary,
        borderRadius: BorderRadius.circular(6),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        child: Row(
          children: [
            MSHCheckbox(
              size: 22,
              value: _isChecked,
              colorConfig: MSHColorConfig.fromCheckedUncheckedDisabled(
                checkedColor: XColors.primary,
                uncheckedColor: XColors.grey400,
              ),
              style: MSHCheckboxStyle.stroke,
              onChanged: (selected) {
                setState(() {
                  _isChecked = selected;
                });
                if (widget.onChanged != null) {
                  widget.onChanged!(selected);
                }
              },
            ),
            const SizedBox(width: 10),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.title,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                  ),
                  const SizedBox(height: 5),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.date,
                        style: TextStyle(
                          color: XColors.grey300,
                          fontSize: 13,
                          fontWeight: FontWeight.w600,
                        ),
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 6,
                              vertical: 2,
                            ),
                            decoration: BoxDecoration(
                              color: widget.color,
                              borderRadius: BorderRadius.circular(6),
                            ),
                            child: RichText(
                              text: TextSpan(
                                children: [
                                  WidgetSpan(
                                    alignment: PlaceholderAlignment.middle,
                                    child: Icon(
                                      widget.icon,
                                      color: widget.iconColor,
                                    ),
                                  ),
                                  TextSpan(
                                    text: " ${widget.category}",
                                    style: TextStyle(
                                      color: textColor,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                            height: 38,
                          ),
                          Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 6,
                              vertical: 2,
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(6),
                              border: Border.all(
                                color: XColors.primary,
                                strokeAlign: 2,
                              ),
                            ),
                            child: RichText(
                              text: TextSpan(
                                children: [
                                  const WidgetSpan(
                                    alignment: PlaceholderAlignment.middle,
                                    child: Icon(
                                      Icons.flag_outlined,
                                      color: Colors.white,
                                    ),
                                  ),
                                  TextSpan(
                                    text: ' ${widget.priority}',
                                    style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
