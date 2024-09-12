import 'dart:math';

import 'package:d_chart/bar_custom/view.dart';
import 'package:flutter/material.dart';
import 'package:nano/assets/colors/colors.dart';

class ChartFocusWidget extends StatelessWidget {
  ChartFocusWidget({super.key});

  final List days = [
    {'class': 'SUN', 'total': 2.3},
    {'class': 'MON', 'total': 3.3},
    {'class': 'TUE', 'total': 5.0},
    {'class': 'WED', 'total': 3.0},
    {'class': 'THU', 'total': 4.0},
    {'class': 'FRI', 'total': 4.3},
    {'class': 'SAT', 'total': 2.0},
  ];

  // A função agora retorna um double corretamente
  double getMaxTotal() {
    return days.map((day) => day['total'] as double).reduce(max);
  }

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 16 / 9,
      child: DChartBarCustom(
        loadingDuration: const Duration(milliseconds: 1500),
        showLoading: true,
        valueAlign: Alignment.topCenter,
        showDomainLine: true,
        showDomainLabel: true,
        showMeasureLine: true,
        showMeasureLabel: true,
        spaceDomainLabeltoChart: 10,
        spaceMeasureLabeltoChart: 5,
        spaceDomainLinetoChart: 15,
        spaceMeasureLinetoChart: 20,
        spaceBetweenItem: 16,
        radiusBar: const BorderRadius.only(
          topLeft: Radius.circular(8),
          topRight: Radius.circular(8),
        ),
        measureLabelStyle: const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 16,
          color: Colors.white,
        ),
        domainLabelStyle: const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 12,
          color: Colors.white,
        ),
        measureLineStyle: const BorderSide(color: Colors.white, width: 2),
        domainLineStyle: const BorderSide(color: Colors.white, width: 2),
        max: getMaxTotal(),
        listData: List.generate(days.length, (index) {
          Color currentColor = XColors.grey200;
          return DChartBarDataCustom(
            onTap: () {
              print(
                '${days[index]['class']} => ${days[index]['total']}',
              );
            },
            elevation: 8,
            value: days[index]['total'] as double,
            label: days[index]['class'],
            color: currentColor.withOpacity(1),
            splashColor: XColors.primary,
            // showValue: days[index]['class'] == 'FRI' ? false : true,
            valueStyle: days[index]['class'] == 'FRI'
                ? const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color: Colors.black,
                  )
                : const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color: Colors.white,
                  ),
            // valueCustom: days[index]['total'] > 20
            //     ? Align(
            //         alignment: Alignment.center,
            //         child: Column(
            //           mainAxisSize: MainAxisSize.min,
            //           children: [
            //             Container(
            //               padding: const EdgeInsets.all(4),
            //               decoration: BoxDecoration(
            //                 border: Border.all(width: 2),
            //                 shape: BoxShape.circle,
            //               ),
            //               child: Text(
            //                 '${days[index]['total']}',
            //                 style: const TextStyle(
            //                   fontSize: 11,
            //                   color: Colors.red,
            //                   fontWeight: FontWeight.w900,
            //                 ),
            //               ),
            //             ),
            //             const Text(
            //               '😄',
            //               style: TextStyle(fontSize: 20),
            //             ),
            //           ],
            //         ),
            //       )
            //     : null,
            valueTooltip: '${days[index]['total']} focused',
          );
        }),
      ),
    );
  }
}
