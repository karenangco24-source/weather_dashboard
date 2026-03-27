import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyLayout(),
    );
  }
}

class MyLayout extends StatelessWidget {
  const MyLayout({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Container(
        color: const Color(0xFFE6ECF5),
        child: Column(
          children: [
            Expanded(
              flex: 15,
              child: Center(
                child: Container(
                  width: screenWidth * 0.5,
                  alignment: Alignment.center,
                  child: const Text(
                    "Weather Dashboard",
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Roboto',
                    ),
                  ),
                ),
              ),
            ),

            Expanded(
              flex: 68,
              child: Center(
                child: Container(
                  width: screenWidth * 0.5,
                  color: Colors.transparent,
                ),
              ),
            ),

            Expanded(
              flex: 17,
              child: Center(
                child: Container(
                  width: screenWidth * 0.5,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      NavItem(
                        icon: Icons.home,
                        label: "Home",
                        isActive: true,
                      ),
                      SizedBox(width: 53),
                      NavItem(
                        icon: Icons.search,
                        label: "Search",
                      ),
                      SizedBox(width: 53),
                      NavItem(
                        icon: Icons.person,
                        label: "Profile",
                      ),
                    ],
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

class NavItem extends StatelessWidget {
  final IconData icon;
  final String label;
  final bool isActive;

  const NavItem({
    super.key,
    required this.icon,
    required this.label,
    this.isActive = false,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        CircleIcon(
          icon: icon,
          isActive: isActive,
          size: 50,
          iconSize: 30,
        ),
        const SizedBox(height: 6),
        Text(
          label,
          style: TextStyle(
            fontSize: 18,
            color: isActive
                ? Colors.blue
                : const Color.fromARGB(255, 122, 134, 143),
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}

class CircleIcon extends StatelessWidget {
  final IconData icon;
  final bool isActive;
  final double size;
  final double iconSize;

  const CircleIcon({
    super.key,
    required this.icon,
    this.isActive = false,
    this.size = 50,
    this.iconSize = 24,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        color: isActive
            ? Colors.blue
            : const Color.fromARGB(255, 122, 134, 143),
        shape: BoxShape.circle,
      ),
      child: Icon(
        icon,
        size: iconSize,
        color: Colors.white,
      ),
    );
  }
}