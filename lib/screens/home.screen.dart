import 'package:flutter/material.dart';
import 'package:nano/assets/colors/colors.dart';
import 'package:nano/widgets/home/header.widget.dart';
import 'package:nano/widgets/home/search.widget.dart';
import 'package:nano/widgets/shared/picker.widget.dart';
import 'package:nano/widgets/shared/task.widget.dart';
import 'package:nano/services/task_list.mock.dart';

// ignore: must_be_immutable
class Home extends StatefulWidget {
  Home({super.key, required this.hasTask});

  bool hasTask = false;

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: XColors.background,
      body: Column(
        children: [
          const SafeArea(
            child: Padding(
              padding: EdgeInsets.all(24),
              child: Header(),
            ),
          ),
          const SearchWidget(),
          widget.hasTask
              ? const SizedBox(height: 20)
              : const SizedBox(height: 0),
          const Row(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 12),
              ),
              PickerWidget(),
            ],
          ),
          widget.hasTask
              ? const SizedBox(height: 10)
              : const SizedBox(height: 0),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: widget.hasTask
                  ? ListView.builder(
                      padding: const EdgeInsets.only(bottom: 100),
                      itemCount: taskList.length,
                      itemBuilder: (context, index) {
                        final task = taskList[index];
                        return Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8.0),
                          child: TaskWidget(
                            title: task.title,
                            date: task.date,
                            category: task.category,
                            priority: task.priority,
                            color: task.color,
                            icon: task.icon,
                            iconColor: task.iconColor,
                            isChecked: false,
                            onChanged: (bool isChecked) {},
                          ),
                        );
                      },
                    )
                  : Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          "assets/Checklist-rafiki.png",
                          width: 250,
                          height: 250,
                          fit: BoxFit.cover,
                        ),
                        const Text(
                          "What do you wanna do today, Caio?",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                        const SizedBox(height: 10),
                        const Text(
                          "Tap + to add your tasks",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
            ),
          ),
        ],
      ),
    );
  }
}
