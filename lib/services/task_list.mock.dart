import 'package:flutter/material.dart';

class Task {
  final String title;
  final String date;
  final String category;
  final int priority;
  final Color color;
  final IconData icon;
  final Color iconColor;

  Task({
    required this.title,
    required this.date,
    required this.category,
    required this.priority,
    required this.color,
    required this.icon,
    required this.iconColor,
  });
}

final List<Task> taskList = [
  Task(
    title: "Daily Meeting",
    date: "Monday at 09:10",
    category: "Work",
    priority: 1,
    color: const Color(0xFFEB8A1D),
    icon: Icons.webhook_rounded,
    iconColor: const Color(0xFFF2C591),
  ),
  Task(
    title: "Grocery Shopping",
    date: "Tuesday at 18:00",
    category: "Personal",
    priority: 1,
    color: const Color(0xFFD73628),
    icon: Icons.blur_on_rounded,
    iconColor: const Color(0xFFEC9991),
  ),
  Task(
    title: "Project Deadline",
    date: "Wednesday at 17:00",
    category: "Work",
    priority: 5,
    color: const Color(0xFFEB8A1D),
    icon: Icons.webhook_rounded,
    iconColor: const Color(0xFFF2C591),
  ),
  Task(
    title: "Doctor Appointment",
    date: "Thursday at 14:30",
    category: "Health",
    priority: 2,
    color: const Color(0xFF04D361),
    icon: Icons.monitor_heart_outlined,
    iconColor: const Color.fromARGB(255, 1, 110, 48),
  ),
  Task(
    title: "Yoga Class",
    date: "Friday at 07:00",
    category: "Fitness",
    priority: 1,
    color: const Color(0xFF4863F7),
    icon: Icons.fitness_center_rounded,
    iconColor: const Color(0xFF8495F6),
  ),
  Task(
    title: "Workout",
    date: "Today at 14:00",
    category: "Fitness",
    priority: 1,
    color: const Color(0xFF4863F7),
    icon: Icons.fitness_center_rounded,
    iconColor: const Color(0xFF8495F6),
  ),
];
