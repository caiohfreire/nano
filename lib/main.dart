import 'package:flutter/material.dart';
import 'package:nano/screens/focus.screen.dart';
import 'package:nano/screens/home.screen.dart';
import 'package:nano/screens/calendar.screen.dart';
import 'package:nano/services/task_list.mock.dart';
import 'package:nano/widgets/shared/bottomNav.widget.dart';

void main() {
  runApp(const Nano());
}

class Nano extends StatelessWidget {
  const Nano({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Nano',
      theme: ThemeData(
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: const MainScreen(),
    );
  }
}

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final PageController _pageController = PageController();
  int _currentIndex = 0;

  void _onNavBarTap(int index) {
    setState(() {
      _currentIndex = index;
    });
    _pageController.jumpToPage(index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: Stack(
        children: [
          PageView(
            controller: _pageController,
            onPageChanged: (index) {
              setState(() {
                _currentIndex = index;
              });
            },
            children: [
              Home(
                hasTask: taskList.isNotEmpty,
              ),
              const Calendar(),
              Home(hasTask: false),
              const FocusMode(),
            ],
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: BottomNav(
              currentIndex: _currentIndex,
              onTap: _onNavBarTap,
            ),
          ),
        ],
      ),
    );
  }
}
