import 'package:flutter/material.dart';
import 'package:nano/screens/home.screen.dart';
import 'package:nano/screens/calendar.screen.dart';
import 'package:nano/widgets/bottomNav.widget.dart';

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
      body: PageView(
        controller: _pageController,
        onPageChanged: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        children: const [
          Home(),
          Calendar(),
        ],
      ),
      bottomNavigationBar: BottomNav(
        currentIndex: _currentIndex,
        onTap: _onNavBarTap,
      ),
    );
  }
}
